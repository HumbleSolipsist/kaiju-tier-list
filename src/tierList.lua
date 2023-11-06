local toWatch = require "toWatch"

local tierList = {
  S = {color = "#ffadad"},
  A = {color = "#ffd6a5"},
  B = {color = "#fdffb6"},
  C = {color = "#caffbf"},
  D = {color = "#9bf6ff"},
  E = {color = "#a0c4ff"},
  F = {color = "#bdb2ff"},
  ["?"] = {color = "#ffc6ff"}
}
for _, movie in ipairs(toWatch) do
  local tier = tierList[movie.tier or "?"] or error("no such tier: " .. movie.tier)
  tier[#tier + 1] = movie
end

io.write(#tierList.S + #tierList.A + #tierList.B + #tierList.C + #tierList.D + #tierList.E + #tierList.F, "\n")
local tiers = {"S", "A", "B", "C", "D", "E", "F"}
for _, tier in ipairs(tiers) do
  io.write(tier, " ")
  for i = 1, #tierList[tier] do
    io.write("#")
  end
  io.write("\n")
end

return tierList
