local index <close> = io.open("../index.html", "w+")
index:write(require("index"):toHtml())
index:close()

local watchedFilmsCSV <close> = io.open("../watchedFilms.csv", "w+")
watchedFilmsCSV :write(require("watchedFilmsCSV"))
watchedFilmsCSV:close()

local allFilmsCSV <close> = io.open("../allFilms.csv", "w+")
allFilmsCSV:write(require("allFilmsCSV"))
allFilmsCSV:close()
