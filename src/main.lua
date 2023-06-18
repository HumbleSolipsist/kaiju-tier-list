local index <close> = io.open("../index.html", "w+")
local s = require("index"):toHtml()
index:write(s)
index:close()

local watchedFilmsCSV <close> = io.open("../watchedFilms.csv", "w+")
s = require("watchedFilmsCSV")
watchedFilmsCSV:write(s)
watchedFilmsCSV:close()

local allFilmsCSV <close> = io.open("../allFilms.csv", "w+")
s = require("allFilmsCSV")
allFilmsCSV:write(s)
allFilmsCSV:close()
