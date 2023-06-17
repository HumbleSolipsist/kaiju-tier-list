local tierList = require "tierList"
local tiers = {"S", "A", "B", "C", "D", "E", "F"}
local csv = "Title, Year\n"

for _, tier in ipairs(tiers) do
  for _, movie in ipairs(tierList[tier]) do
    csv = csv .. "\"" .. movie.title .. "\"," .. movie.year .. "\n"
  end
end

return csv
