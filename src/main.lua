local index <close> = io.open("../index.html", "w+")
index:write(require("index"):toHtml())

local letterboxdcsv <close> = io.open("../letterboxd.csv", "w+")
letterboxdcsv:write(require("makeLetterboxdCSV"))
