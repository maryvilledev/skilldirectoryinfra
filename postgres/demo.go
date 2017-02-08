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

  SkillId       int `gorm:"index"`
  TeamMemberId  int `gorm:"index"`
}

type Link struct {
  gorm.Model

  Body      string
  Positive  bool

  URL       string

  SkillId   int `gorm:"index"`
}

func main() {
  db, err := gorm.Open("postgres", "host=localhost user=postgres dbname=skilldirectory sslmode=disable password=password")
  if err != nil {
    fmt.Println(err)
    return
  }
  db.AutoMigrate(&Skill{}, &TeamMember{}, &Review{}, &Link{})
}
