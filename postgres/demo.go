package main

import (
  "fmt"

  "github.com/jinzhu/gorm"
  _ "github.com/jinzhu/gorm/dialects/postgres"
)

type Skill struct {
  gorm.Model

  Name        string
  Type        string

  IconURL     string

  Links       []Link
  Reviews     []Review

  TeamMembers []TeamMember  `gorm:"many2many:teammember_skills"`
}

type TeamMember struct {
  gorm.Model

  Name    string
  Title   string

  Reviews []Review
  Skills  []Skill  `gorm:"many2many:teammember_skills"`
}

type Review struct {
  gorm.Model

  Body          string
  Positive      bool

  Skill         Skill
  SkillID       uint  `gorm:"index"` //Foreign key for association
  TeamMember    TeamMember
}

type Link struct {
  gorm.Model

  Name      string
  Type       bool

  URL       string

  SkillId   int `gorm:"index"`
}

func main() {
  // Connect to the database, and update the schema
  db, err := gorm.Open("postgres", "host=localhost user=postgres dbname=skilldirectory sslmode=disable password=password")
  if err != nil {
    fmt.Printf("%v", err)
    return
  }
  db.AutoMigrate(&Skill{}, &TeamMember{}, &Review{}, &Link{})

  // Let's add 2 team members
  fmt.Println("Adding some team members...")
  dane := TeamMember{Name: "Dane", Title: "Developer"}
  joel := TeamMember{Name: "Joel", Title: "Developer"}
  db.Save(&dane)
  db.Save(&joel)

  //See if we can't get them back
  fmt.Println("Querying for team members...")
  var teamMembers []TeamMember
  db.Find(&teamMembers)
  for _, teamMember := range teamMembers {
    fmt.Printf("Found %s\n", teamMember.Name)
  }

  //Let's add a skill, with some knowledgeable team members
  fmt.Println("Adding skill...")
  golang := Skill{
    Name: "Golang",
    Type: "compiled",
    IconURL: "http://example.com",
    TeamMembers: []TeamMember{dane, joel},
  }
  db.Save(&golang)

  //See if we can't get that back, and preload with the knowledgeable team members
  fmt.Println("Querying for skills and associated team members...")
  var skills []Skill
  db.Preload("TeamMembers").Find(&skills)
  for _, skill := range skills {
    fmt.Printf("People who know the %s skill:", skill.Name)
    for _, member := range skill.TeamMembers {
      fmt.Printf(" %s", member.Name)
    }
    fmt.Println()
  }

  // Let's create a review
  fmt.Println("Adding a review...")
  golangReview := Review {
    Body: "I love it",
    Positive: true,
    Skill: golang,
    TeamMember: dane,
  }
  db.Save(&golangReview)

  // Let's try to get back by querying golang reviews,
  // and write the time it was created
  fmt.Println("Querying for golang review creation times...")
  var container Review
  db.Model(&golang).Related(&Review{}).Select("created_at").First(&container)
  fmt.Printf("%s\n", &container.CreatedAt)
}
