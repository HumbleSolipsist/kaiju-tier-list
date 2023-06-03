--local html = require "html"
local html = dofile "html.lua"
local toWatch = dofile "toWatch.lua"

for i, movie in ipairs(toWatch) do
  movie.order = i
end

table.sort(toWatch, function(m1, m2)
  return m1.year == m2.year
    and m1.order < m2.order
    or (m1.year or 999999) < (m2.year or 999999)
end)

local tierList = {S = {}, A = {}, B = {}, C = {}, D = {}, F = {}, ["?"] = {}}
for _, movie in ipairs(toWatch) do
  local tier = tierList[movie.tier or "?"] or error("no such tier: " .. movie.tier)
  tier[#tier + 1] = movie
end

tierList["S"].color = "#ffadad"
tierList["A"].color = "#ffd6a5"
tierList["B"].color = "#fdffb6"
tierList["C"].color = "#caffbf"
tierList["D"].color = "#a0c4ff"
tierList["F"].color = "#bdb2ff"
tierList["?"].color = "#ffc6ff"

local function tierListRow(rowTitle, rowData)
  local movieDivs = {}
  for _, movie in ipairs(rowData) do
    local year = movie.year or "TBA"
    movieDivs[#movieDivs + 1] = html.div{
      id = movie.title .. " (" .. year .. ")",
      class = "tierEntry",
      title = movie.blurb or movie.title,
      movie.poster
        and html.img{src = movie.poster, class = "moviePoster"}
        or html.comment("No poster."),
      html.br{},
      html.i{movie.title},
      html.br{},
      "(" .. year .. ")"
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
  html.comment{
    "I got my rainbow from here: https://colorkit.co/palette/ffadad-ffd6a5-fdffb6-caffbf-a0c4ff-bdb2ff-ffc6ff/"
  },
  html.head{
    html.meta{name = "viewport", content = "width=device-width, initial-scale=1"},
    html.meta{charset = "utf-8"},
    html.spliceStylesheet("style.css"),
  },
  html.body{
    html.div{
      class = "navBar",
      html.a{
        class = "navLink",
        href = "#",
        style = "background-color:black;color:white",
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
      html.p{class = "intro",
        "My kaiju film tier list. The term \"kaiju\" is used loosely here.",
        "There are many items in here whose placement I am uncertain of, but I",
        "think the list is mostly well organised.",
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
    },
    html.p{
      class = "updateLabel",
      "Last updated: " .. os.date("!%b %d, %Y - %H:%M (UTC)")
    },
  }
}:toHtml()
