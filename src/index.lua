local html = require "html"
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
    if movie.year == nil then
      print(movie.title)
    end
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
    html.h2{
      class = "tierName",
      style = "background-color:" .. rowData.color,
      rowTitle},
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
        "^"
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
      html.h1{class = "pageTitle", "Andrew's Kaiju Film Tier List"},
      html.p{class = "intro",
        "My kaiju film tier list. The term \"kaiju\" is used loosely here.",
        "There are many items in here whose placement I am uncertain of, but I",
        "think the list is mostly well organised.",
        "There is a little blurb for each rated film which you can see by hovering",
        "over the film's entry with your mouse (you may be able to see the text by",
        "doing a long-touch on mobile).",
        "The fact that all the S-tier films were released after my birth is ",
        "a coincidence, as I am immune to bias and nostalgia ;)"},
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
}
