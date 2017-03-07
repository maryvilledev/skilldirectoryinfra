package main

import (
	"skilldirectoryinfra/migration/tool"

	"github.com/Sirupsen/logrus"
)

func main() {
	logger := logrus.New()
	migrationTool := tool.NewMigrationTool(tool.ConnectToPostgres(logger), tool.ConnectToCassandra(logger))
	migrationTool.MoveSkills()
	migrationTool.MoveLinks()
	migrationTool.MoveTeamMembers()
	migrationTool.MoveReviews()
	migrationTool.MoveTMSkills()

}
