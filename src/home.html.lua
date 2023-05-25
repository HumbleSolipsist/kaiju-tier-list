--local html = require "html"
local html = dofile "html.lua"
local toWatch = dofile "toWatch.lua"

for i, movie in ipairs(toWatch) do
  movie.order = i
end

table.sort(toWatch, function(m1, m2)
  return m1.year == m2.year and m1.order < m2.order or m1.year < m2.year
end)

local tierList = {S = {}, A = {}, B = {}, C = {}, D = {}, F = {}, ["?"] = {}}
for _, movie in ipairs(toWatch) do
  local tier = tierList[movie.tier or "?"] or error("no such tier: " .. movie.tier)
  tier[#tier + 1] = movie
end

local tiers = {"S", "A", "B", "C", "D", "F"}
local ratingCount = 0
for _, tier in ipairs(tiers) do
  local prop = #tierList[tier]/#toWatch
  print(tier, ("#"):rep(math.floor(prop * 200)))
  ratingCount = ratingCount + #tierList[tier]
end
print(ratingCount)

local function tierListRow(rowTitle, rowData)
  local movieDivs = {}
  for _, movie in ipairs(rowData) do
    movieDivs[#movieDivs + 1] = html.div{
      class = "tierEntry",
      title = movie.blurb or movie.title,
      html.i{movie.title},
      html.br{},
      "(" .. movie.year .. ")"
    }
  end

  return html.div{
    class = "tierRow",
    html.h2{class = "tierName", rowTitle},
    html.div{class = "tierContent",
        table.unpack(movieDivs)
    }
  }
end

return html.document{
  html.head{
    html.style{
      [".tierRow"] = {

      },
      [".tierName"] = {
        display = "inline-block",
        ["text-align"] = "center",
      },
      [".tierContent"] = {
        display = "inline-block",
      },
      [".tierEntry"] = {
        display = "inline-block",
        padding = "4pt",
        margin = "auto",
        width = "150pt",
        ["text-align"] = "center",
        ["vertical-align"] = "middle"
      },
    },
  },
  html.body{
    html.h1{"Andrew's Kaiju Tier List"},
    html.p{"My kaiju film tier list. The term \"kaiju\" is used loosely here."},
    html.div{style = "background-color:#e6adad", tierListRow("S", tierList["S"])},
    html.div{style = "background-color:#e6d8ad", tierListRow("A", tierList["A"])},
    html.div{style = "background-color:#c9e6ad", tierListRow("B", tierList["B"])},
    html.div{style = "background-color:#ade6bb", tierListRow("C", tierList["C"])},
    html.div{style = "background-color:#ade6e6", tierListRow("D", tierList["D"])},
    html.div{style = "background-color:#adbbe6", tierListRow("F", tierList["F"])},
    html.div{style = "background-color:#c9ade6", tierListRow("?", tierList["?"])},
  }
}:toHtml()
