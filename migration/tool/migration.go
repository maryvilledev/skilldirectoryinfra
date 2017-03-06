package tool

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"skilldirectoryinfra/migration/cassandramodel"
	"skilldirectoryinfra/migration/pgmodel"

	"github.com/gocql/gocql"
)

func GetProperty(key string) string {
	log.Printf("Getting Env: %s", key)
	return os.Getenv(key)
}

type MigrationTool struct {
	p      *PostgresConnector
	c      *CassandraConnector
	delete bool
}

func NewMigrationTool(p *PostgresConnector, c *CassandraConnector) MigrationTool {
	p.DB().AutoMigrate(pgmodel.Skill{}, pgmodel.SkillReview{}, pgmodel.Link{}, pgmodel.TeamMember{}, pgmodel.TMSkill{})
	return MigrationTool{p: p, c: c}
}
func (m MigrationTool) SetDelete() { m.delete = true }

func (m MigrationTool) MoveSkills() {
	var skill cassandramodel.Skill
	queryBytes := []byte{}

	iter := m.c.Query("SELECT JSON * FROM skills ").Iter()
	for iter.Scan(&queryBytes) {
		err := json.Unmarshal(queryBytes, &skill)
		if err != nil {
			m.c.Print(err)
		}
		m.c.Print(skill)
		icon := m.addIcon(&skill)
		pgSkill := pgmodel.NewSkill(skill.Name, skill.SkillType, icon, skill.ID)
		m.p.Print(pgSkill)
		err = m.p.DB().Create(&pgSkill).Error
		if err != nil {
			m.c.Print(err)
			continue
		}
		if m.delete {
			err = m.c.Query(fmt.Sprintf("DELETE from skills WHERE id = %s", skill.ID)).Exec()
			if err != nil {
				m.p.Print(err)
			}
		}
	}
}

func (m MigrationTool) addIcon(skill *cassandramodel.Skill) string {
	byteQ := []byte{}
	err := m.c.Query(fmt.Sprintf("SELECT JSON * FROM skillicons WHERE skill_id = %s", skill.ID)).Consistency(gocql.One).Scan(&byteQ)
	if err != nil {
		m.c.Print(err)
		return ""
	}
	var icon cassandramodel.SkillIcon
	err = json.Unmarshal(byteQ, &icon)
	if err != nil {
		m.c.Print(err)
		return ""
	}
	m.c.Printf("Icon: %s", icon.URL)
	return icon.URL

}

func (m MigrationTool) MoveLinks() {
	var link cassandramodel.Link
	queryBytes := []byte{}

	iter := m.c.Query("SELECT JSON * FROM links").Iter()
	for iter.Scan(&queryBytes) {
		err := json.Unmarshal(queryBytes, &link)
		if err != nil {
			m.c.Print(err)
		}
		m.c.Print(link)
		skillID := m.SelectSkill(link.SkillID)
		pgLink := pgmodel.NewLink(skillID, link.Name, link.URL, link.LinkType, link.ID)
		fmt.Println(pgLink)
		err = m.p.DB().Create(&pgLink).Error
		if err != nil {
			m.p.Print(err)
			continue
		}
	}
}

func (m MigrationTool) SelectSkill(cassID string) uint {
	var skill pgmodel.Skill
	err := m.p.DB().Where("cassandra_id = ?", cassID).First(&skill).Error
	if err != nil {
		m.c.Print(err)
		return 0
	}
	m.c.Printf("Skill: %v", skill)
	return skill.ID
}

func (m MigrationTool) SelectTeamMember(cassID string) uint {
	var teamMember pgmodel.TeamMember
	err := m.p.DB().Where("cassandra_id = ?", cassID).First(&teamMember).Error
	if err != nil {
		m.c.Print(err)
		return 0
	}
	m.c.Printf("TeamMember: %v", teamMember)
	return teamMember.ID
}

func (m MigrationTool) MoveTeamMembers() {
	var teamMember cassandramodel.TeamMember
	queryBytes := []byte{}

	iter := m.c.Query("SELECT JSON * FROM teammembers;").Iter()
	for iter.Scan(&queryBytes) {
		err := json.Unmarshal(queryBytes, &teamMember)
		if err != nil {
			m.c.Print(err)
		}
		pgTeamMember := pgmodel.NewTeamMember(teamMember.Name, teamMember.Title, teamMember.ID)
		err = m.p.DB().Create(&pgTeamMember).Error
		if err != nil {
			m.p.Print(err)
		}
		if m.delete {
			err = m.c.Query(fmt.Sprintf("DELETE from teammembers WHERE id = %s", teamMember.ID)).Exec()
			if err != nil {
				m.p.Print(err)
			}
		}
	}
}

func (m MigrationTool) MoveReviews() {
	var review cassandramodel.SkillReview
	queryBytes := []byte{}

	iter := m.c.Query("SELECT JSON * FROM skillreviews;").Iter()
	for iter.Scan(&queryBytes) {
		err := json.Unmarshal(queryBytes, &review)
		if err != nil {
			m.c.Print(err)
		}
		skillID := m.SelectSkill(review.SkillID)
		teamMemberID := m.SelectTeamMember(review.TeamMemberID)
		pgSkillReview := pgmodel.NewSkillReview(skillID, teamMemberID, review.Body, review.ID, review.Positive)
		err = m.p.DB().Create(&pgSkillReview).Error
		if err != nil {
			m.p.Print(err)
			continue
		}
		if m.delete {
			err = m.c.Query(fmt.Sprintf("DELETE from skill_reviews WHERE id = %s", review.ID)).Exec()
			if err != nil {
				m.p.Print(err)
			}
		}
	}
}
