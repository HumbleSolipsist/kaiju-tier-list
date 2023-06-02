local outf <close> = io.open("home.html", "w+")
outf:write(dofile("home.lua"))
