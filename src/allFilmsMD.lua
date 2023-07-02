local toWatch = require "toWatch"

local out = "# Andrew's Kaiju Watchlist\n\n"

for _, film in ipairs(toWatch) do
  out = out
    .. "`[" .. (film.tier or " ") .. "] "
    .. "(" .. film.year .. ")`"
    .. "**" .. film.title .. "**  \n"
end

return out
