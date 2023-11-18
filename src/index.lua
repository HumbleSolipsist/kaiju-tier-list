local html = require "html"
local tierList = require "tierList"

local function fileExists(fname)
  local f <close> = io.open(fname, "r")
  return f ~= nil
end

local function tierListRow(rowTitle, rowData)
  local movieDivs = {}
  for _, movie in ipairs(rowData) do
    if movie.year == nil then
      print(movie.title)
    end

    local posterSrc = movie.poster or ("posters/(" .. movie.year .. ") " .. movie.title)

    movieDivs[#movieDivs + 1] = html.div{
      id = movie.title .. " (" .. movie.year .. ")",
      class = "tierEntry",
      title = movie.blurb or movie.title,
      fileExists("../" .. posterSrc)
        and  html.img{
               src = posterSrc,
               class = "moviePoster"}
        or html.comment{"No poster"},
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
  html.head{
    html.title{
      "Kaiju Tier List"
    }
  },
  html.comment{
    "I got my rainbow from here: https://colorkit.co/palette/ffadad-ffd6a5-fdffb6-caffbf-9bf6ff-a0c4ff-bdb2ff-ffc6ff/"
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
      tierNav("E"),
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
      html.p{class = "intro",
        "Also available as an ",
        html.a{href = "https://letterboxd.com/humblesolipsist/list/kaiju-film-ranking/",
          "ordered list on letterboxd"
        },
      },
      tierListRow("S", tierList["S"]),
      tierListRow("A", tierList["A"]),
      tierListRow("B", tierList["B"]),
      tierListRow("C", tierList["C"]),
      tierListRow("D", tierList["D"]),
      tierListRow("E", tierList["E"]),
      tierListRow("F", tierList["F"]),
      tierListRow("?", tierList["?"]),
    },
    html.p{
      class = "updateLabel",
      "Last updated: " .. os.date("!%b %d, %Y - %H:%M (UTC)")
    },
  }
}
