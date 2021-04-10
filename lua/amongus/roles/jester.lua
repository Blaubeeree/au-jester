roles.CreateTeam(ROLE.name, {
  color = Color(245, 48, 155)
})

ROLE.color = Color(245, 48, 155)
ROLE.defaultTeam = TEAM_JESTER
ROLE.HasTasks = false

ROLE.defaultCVarData = {
  pct = 0.17,
  max = 1,
  minPlayers = 7,
  random = 50
}