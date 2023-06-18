-- make a csv for letterboxd import
local tierList = require "tierList"
local tiers = {"S", "A", "B", "C", "D", "E", "F"}
local csv = "Title, Year, Rating\n"

local function tierToStars(tier)
  local tierToNo = {S = 7, A = 6, B = 5, C = 4, D = 3, E = 2, F = 1}
  local tierNo = tierToNo[tier]
  return math.floor(tierNo * (10/7))/2
end

for _, tier in ipairs(tiers) do
  for _, movie in ipairs(tierList[tier]) do
    csv = csv .. "\"" .. movie.title .. "\"," .. movie.year .. "," .. tierToStars(movie.tier) .. "\n"
  end
end

return csv
