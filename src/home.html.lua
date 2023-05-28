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

tierList["S"].color = "#e6adad"
tierList["A"].color = "#e6d8ad"
tierList["B"].color = "#c9e6ad"
tierList["C"].color = "#ade6bb"
tierList["D"].color = "#ade6e6"
tierList["F"].color = "#adbbe6"
tierList["?"].color = "#c9ade6"

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
      id = movie.title .. " (" .. movie.year .. ")",
      class = "tierEntry",
      title = movie.blurb or movie.title,
      movie.poster
      and html.img{src = movie.poster, class = "moviePoster"}
      or html.comment("No poster."),
      html.br{},
      html.i{movie.title},
      html.br{},
      "(" .. movie.year .. ")"
    }
  end

  return html.div{
    id = rowTitle,
    class = "tierRow",
    style = "background-color:" .. rowData.color,
    html.h2{class = "tierName", rowTitle},
    html.div{class = "tierContent",
        table.unpack(movieDivs)
    }
  }
end

local function tierNav(id)
  return html.a{
    class = "navLink",
    style = "background-color:" .. tierList[id].color .. ";color:black",
    href = "#" .. id,
    id
  }
end

return html.document{
  html.head{
    html.spliceStylesheet("style.css"),
  },
  html.body{
    html.div{
      id = "sidebar",
      html.a{
        class = "navLink",
        href = "#",
        style = "color:white",
        "Top"
      },
      tierNav("S"),
      tierNav("A"),
      tierNav("B"),
      tierNav("C"),
      tierNav("D"),
      tierNav("F"),
      tierNav("?"),
    },
    html.div{
      class = "mainContent",
      html.h1{class = "pageTitle", "Andrew's Kaiju Tier List"},
      html.p{"My kaiju film tier list. The term \"kaiju\" is used loosely here.",
             "There are many items in here whose placement I am uncertain of, but I",
             "think the list is mostly a good representation of my thoughts and feelings.",
             "There is a little blurb for each rated film which you can see by hovering",
             "over the film's entry with your mouse (doesn't work on mobile).",
             "The fact that all the S-tier films were released after my birth is ",
             "a coincidence, as I am immune to bias and nostalgia."},
      tierListRow("S", tierList["S"]),
      tierListRow("A", tierList["A"]),
      tierListRow("B", tierList["B"]),
      tierListRow("C", tierList["C"]),
      tierListRow("D", tierList["D"]),
      tierListRow("F", tierList["F"]),
      tierListRow("?", tierList["?"]),
    }
  }
}:toHtml()
