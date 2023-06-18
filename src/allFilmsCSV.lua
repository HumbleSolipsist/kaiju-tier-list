local toWatch = require "toWatch"
local csv = "Title, Year\n"

for _, movie in ipairs(toWatch) do
  csv = csv .. "\"" .. movie.title .. "\"," .. movie.year .. "\n"
end

return csv
