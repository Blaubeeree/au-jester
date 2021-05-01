roles.CreateTeam(ROLE.name, {
  color = Color(245, 48, 155)
})

ROLE.desc = "Get voted out to win."
ROLE.color = Color(245, 48, 155)
ROLE.defaultTeam = TEAM_JESTER
ROLE.HasTasks = false

ROLE.defaultCVarData = {
  pct = 0.17,
  max = 1,
  minPlayers = 7,
  random = 50
}

if SERVER then
  local shouldWin = false

  hook.Add("GMAU MeetingEnd", "JesterWin", function(reason, ejected)
    if ejected and ejected.entity:GetRole() == JESTER then
      shouldWin = true
    end
  end)

  hook.Add("GMAU ShouldWin", "JesterWin", function(team)
    if team.id == TEAM_JESTER and shouldWin then
      shouldWin = false
      return true
    end
  end)
end