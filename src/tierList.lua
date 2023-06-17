local toWatch = require "toWatch"

for i, movie in ipairs(toWatch) do
  movie.order = i
end

table.sort(toWatch, function(m1, m2)
  local year1 = type(m1.year) == "number" and m1.year or 999999
  local year2 = type(m2.year) == "number" and m2.year or 999999
  return year1 == year2
    and m1.order < m2.order
    or year1 < year2
end)

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

local tiers = {"S", "A", "B", "C", "D", "E", "F"}
for _, tier in ipairs(tiers) do
  local prop = #tierList[tier]/#toWatch
  local printCount = math.floor(prop * 200)
  io.write(tier, " ")
  for i = 1, printCount do
    io.write("#")
  end
  io.write("\n")
end

return tierList
