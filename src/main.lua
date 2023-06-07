local outf <close> = io.open("../index.html", "w+")
outf:write(require("index"):toHtml())
