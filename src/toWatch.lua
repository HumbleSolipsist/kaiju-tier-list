local toWatch = {
  -- King Kong
  {tier = "B", year = 1933, title = "King Kong",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Kingkongposter.jpg/220px-Kingkongposter.jpg",
   blurb = "A grim spectacle of prehistoric violence brought into the modern world."},
  {tier = "C", year = 1933, title = "Son of Kong",
   poster = "https://upload.wikimedia.org/wikipedia/en/9/96/Son_of_Kong_poster.jpg",
   blurb = "Recognizes that Skull Island is interesting enough without Kong to "
        .. "still have a fun story, but decidedly on the slow side. Lacks purpose."},
  {tier = "C", year = 1967, title = "King Kong Escapes",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/b/b8/King_Kong_Escapes_Japanese_Poster.jpg/220px-King_Kong_Escapes_Japanese_Poster.jpg",
   blurb = "Surprisingly, a lot of kaiju films take heavy inspiration from James Bond, "
        .. "though they don't tend to match its budget. This is one such film."},
  {tier = "D", year = 1976, title = "King Kong",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/King_kong_1976_movie_poster.jpg/220px-King_kong_1976_movie_poster.jpg",
   blurb = "This retelling changes the plot in some truly idiotic ways, and far "
        .. "too much focus is placed on the sexual aspects of the story at the expense "
        .. "of the action."},
  {tier = "E", year = 1986, title = "King Kong Lives",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/46/Kingkonglives.jpg/220px-Kingkonglives.jpg",
   blurb = "He's alive and he's horny, what more could you ask for? A lot, actually. "
        .. "On the bright side, you get to see Linda Hamilton's right nipple for a frame or two."},
  {tier = "F", year = 1998, title = "The Mighty Kong",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/e/e7/Mighty_Kong_Video.jpg/220px-Mighty_Kong_Video.jpg",
   blurb = "A perplexingly awful attempt at a child-friendly retelling of a horror "
        .. "movie about a rapist gorilla."},
  {tier = "S", year = 2005, title = "King Kong",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/6a/Kingkong_bigfinal1.jpg/220px-Kingkong_bigfinal1.jpg",
   blurb = "It may be 3 hours long, but it earns its runtime. A dark fantasy epic "
        .. "about nature's loss of divinity in the industrial age."},
  {tier = "B", year = 2017, title = "Kong: Skull Island",
   poster = "https://upload.wikimedia.org/wikipedia/en/3/34/Kong_Skull_Island_poster.jpg",
   blurb = "Delivers on the action, but feels very generic."},
  {tier = "C", year = 2023, title = "Skull Island",
   poster = "https://upload.wikimedia.org/wikipedia/en/3/30/Skull_Island_officialposter.jpg",
   blurb = "Pretty much exactly what you'd expect from an action/adventure animated "
        .. "series on Netflix."},

  -- Godzilla
  -- Showa
  {tier = "A", year = 1954, title = "Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Gojira_1954_Japanese_poster.jpg/220px-Gojira_1954_Japanese_poster.jpg",
   blurb = "An evocative and aggressively political tragedy. Still one of the best "
        .. "examples of monster-as-a-metaphor in film."},
  {tier = "E", year = 1955, title = "Godzilla Raids Again",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Gojira_no_gyakushu_poster.jpg/220px-Gojira_no_gyakushu_poster.jpg",
   blurb = "A frankly pathetic sequel, lacking both heart and flare."},
  {tier = "D", year = 1956, title = "Godzilla: King of the Monsters!",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/4b/Godzilla%2C_King_of_the_Monsters%21_%281956%29_poster.jpg/220px-Godzilla%2C_King_of_the_Monsters%21_%281956%29_poster.jpg",
   blurb = "Don't expect a localization of the OG Godzilla, this is so heavily "
        .. "edited that it's basically a new film that just scrapped Godzilla for "
        .. "stock footage."},
  {tier = "C", year = 1962, title = "King Kong vs Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/King_Kong_vs._Godzilla.png/220px-King_Kong_vs._Godzilla.png",
   blurb = "A slapstick reimagining of the titular beasts - silly, but pretty funny."},
  {tier = "C", year = 1964, title = "Mothra vs Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Mothra_vs._Godzilla_poster.jpg/220px-Mothra_vs._Godzilla_poster.jpg",
   blurb = "Enticingly mysterious and mystical, but Godzilla's portrayal is fairly "
        .. "unintimidating and the fight scenes are repetitive."},
  {tier = "C", year = 1964, title = "Ghidorah, the Three-Headed Monster",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Ghidorah_The_Three-Headed_Monster_Poster.webp/220px-Ghidorah_The_Three-Headed_Monster_Poster.webp.png",
   blurb = "Has some memorable shots, such as Ghidorah hatching, but was largely "
        .. "kind of forgettable."},
  {tier = "C", year = 1965, title = "Invasion of Astro-Monster",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Invasion_of_Astro_Monster_Poster.jpg/220px-Invasion_of_Astro_Monster_Poster.jpg",
   blurb = "An American/Japanese co-production. It's clear when watching that the "
        .. "American lead actor is speaking English, whereas the Japanese actors "
        .. "speak Japanese, so all language options involve some dubbing."},
  {tier = "D", year = 1966, title = "Ebirah, Horror of the Deep",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/68/Godzilla_vs_the_Sea_Monster_1966.jpg/220px-Godzilla_vs_the_Sea_Monster_1966.jpg",
   blurb = "Godzilla plays a knock-off King Kong in this knock-off James Bond film."},
  {tier = "B", year = 1967, title = "Son of Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/2/2a/Son_of_Godzilla_1967.jpg/220px-Son_of_Godzilla_1967.jpg",
   blurb = "A self-parody, irreverent of everything that Godzilla stands for. "
        .. "Succeeds in eliciting many a laugh."},
  {tier = "B", year = 1968, title = "Destroy All Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/Destroy_All_Monsters_1968.jpg/220px-Destroy_All_Monsters_1968.jpg",
   blurb = "A mashup of every monster they had sitting in the closet at time of "
        .. "shooting. The final fight is too one-sided to be tense, but it is "
        .. "fun to watch all the other kaiju kicking the shit out of Ghidorah."},
  {tier = "E", year = 1969, title = "All Monsters Attack",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/3/3a/Godzilla%27s_Revenge_1969.jpg/220px-Godzilla%27s_Revenge_1969.jpg",
   blurb = "A film about a small boy learning how to stand up to bullies. Not horribly "
        .. "made, but lacking anything to appeal to adults."},
  {tier = "D", year = 1971, title = "Godzilla vs Hedorah",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/00/Godzilla_vs_Hedorah_1971.jpg/220px-Godzilla_vs_Hedorah_1971.jpg",
   blurb = "Weird, and not in a good way."},
  {tier = "B", year = 1972, title = "Godzilla vs Gigan",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/b/b3/Godzilla_vs_Gigan_1972.jpg/220px-Godzilla_vs_Gigan_1972.jpg",
   blurb = "Put me in mind of Scooby Doo; a goofy story about a rag-tag team of young "
        .. "adults investigating the Mysterious Upcoming Amusement Park(tm)."},
  {tier = "E", year = 1973, title = "Godzilla vs Megalon",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Godzilla_vs._Megalon_%281973%29_poster.jpg/220px-Godzilla_vs._Megalon_%281973%29_poster.jpg",
   blurb = "About as nonsensical as they come, and without enough action to even "
        .. "pass as dumb fun. Reuses a lot of footage from prior films."},
  {tier = "B", year = 1974, title = "Godzilla vs Mechagodzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Godzilla_vs_Mechagodzilla_1974.jpg/220px-Godzilla_vs_Mechagodzilla_1974.jpg",
   blurb = "Mechagodzilla is spectacular in a fight, owing to his myriad weapons "
        .. "and gadgets. The writing is uncharacteristically strong as well."},
  {tier = "C", year = 1975, title = "Terror of Mechagodzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/7/77/Terror_of_MechaGodzilla_1975.jpg/220px-Terror_of_MechaGodzilla_1975.jpg",
   blurb = "Titanosaurus is pretty cool, I guess."},

  -- Heisei
  {tier = "D", year = 1984, title = "The Return of Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Godzilla_1984.jpg/220px-Godzilla_1984.jpg",
   blurb = "Although it tries to return to a darker take on Godzilla, "
        .. "the writing has retained the silliness of the Showa films, so "
        .. "it's hard for the audience to take it as seriously as it takes itself."},
  {tier = "B", year = 1989, title = "Godzilla vs Biollante",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/a9/Godzilla_vs._Biollante_%281989%29_poster.jpg/220px-Godzilla_vs._Biollante_%281989%29_poster.jpg",
   blurb = "Biollante, and the parts of the film that focus on her, are incredible. "
        .. "Unfortunately, much of the film focuses instead on a fairly conventional "
        .. "story about Godzilla fighting a flaccid military, and the ending is a "
        .. "complete cop-out."},
  {tier = "D", year = 1991, title = "Godzilla vs King Ghidorah",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/07/Godzilla_vs._King_Ghidorah_%281991%29_Japanese_theatrical_poster.jpg/220px-Godzilla_vs._King_Ghidorah_%281991%29_Japanese_theatrical_poster.jpg",
   blurb = "The Godzilla franchise is not known for great writing, but Godzilla "
        .. "vs King Ghidorah is exceptionally terrible in that respect. Complete "
        .. "gibberish from beginning to end."},
  {tier = "C", year = 1992, title = "Godzilla and Mothra: The Battle For Earth",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Godzillamothra1992.jpg/220px-Godzillamothra1992.jpg",
   blurb = "The action's fun, but at times it feels like the writers forgot what "
        .. "the story was and bizarre things happen."},
  {tier = "A", year = 1993, title = "Godzilla vs Mechagodzilla II",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/Godzilla_vs._Mechagodzilla_II_%281993%29_Japanese_theatrical_poster.jpg/220px-Godzilla_vs._Mechagodzilla_II_%281993%29_Japanese_theatrical_poster.jpg",
   blurb = "Just an all-around really solid action movie - Mechagodzilla is a real "
        .. "spectacle on the battlefield."},
  {tier = "D", year = 1994, title = "Godzilla vs Spacegodzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Godzilla_vs_SpaceGodzilla_%281994%29_Japanese_theatrical_poster.jpg/220px-Godzilla_vs_SpaceGodzilla_%281994%29_Japanese_theatrical_poster.jpg",
   blurb = "So forgettable that I can't think of anything else to say."},
  {tier = "A", year = 1995, title = "Godzilla vs Destoroya",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/Godzilla_vs._Destoroyah_%281995%29_Japanese_theatrical_poster.jpg/220px-Godzilla_vs._Destoroyah_%281995%29_Japanese_theatrical_poster.jpg",
   blurb = "One of the most intimidating Godzillas faces off with his most intimidating "
        .. "foe. High stakes and awesome visuals keep the excitement high."},

  -- Tristar
  {tier = "D", year = 1998, title = "Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/2/2e/Godzilla_%281998_Movie_Poster%29.jpg/220px-Godzilla_%281998_Movie_Poster%29.jpg",
   blurb = "Doesn't really feel like Godzilla, and, even ignoring that, it was a weak "
        .. "film. At times the weird pacing made it feel more like an extended trailer "
        .. "than an actual movie."},

  -- Millenium
  {tier = "C", year = 1999, title = "Godzilla 2000",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/Godzilla2000jap.jpg/220px-Godzilla2000jap.jpg",
   blurb = "Mostly kind of crap, but the awesome climactic battle saves it."},
  {tier = "D", year = 2000, title = "Godzilla vs Megaguirus",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Godzilla_vs._Megaguirus_%282000%29_Japanese_theatrical_poster.jpg/220px-Godzilla_vs._Megaguirus_%282000%29_Japanese_theatrical_poster.jpg",
   blurb = "Beautiful practical effects give way to downright ameturish CGI, just "
        .. "in time for the climax."},
  {tier = "S", year = 2001, title = "Godzilla, Mothra, and King Ghidorah: Giant Monsters All-Out Attack",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Godzilla%2C_Mothra_and_King_Ghidorah_Giant_Monsters_All-Out_Attack_%282001%29_Japanese_theatrical_poster.jpg/220px-Godzilla%2C_Mothra_and_King_Ghidorah_Giant_Monsters_All-Out_Attack_%282001%29_Japanese_theatrical_poster.jpg",
   blurb = "The essence of kaiju cinema, refined and presented beautifully."},
  {tier = "C", year = 2002, title = "Godzilla Against Mechagodzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Godzilla_Against_Mechagodzilla_%282002%29_Japanese_theatrical_poster.jpg/220px-Godzilla_Against_Mechagodzilla_%282002%29_Japanese_theatrical_poster.jpg",
   blurb = "Sets up enthralling philisophical questions with Kiryu, but has little "
        .. "interest in exploring them in depth."},
  {tier = "B", year = 2003, title = "Godzilla: Tokyo SOS",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/0a/Godzilla_-_Tokyo_S.O.S._%282003%29_Japanese_theatrical_poster.jpg/220px-Godzilla_-_Tokyo_S.O.S._%282003%29_Japanese_theatrical_poster.jpg",
   blurb = "A sequel to Godzilla Against Mechagodzilla. Still doesn't sufficiently "
        .. "address the obvious moral questions, but Kiryu suplexes Godzilla and "
        .. "that is pretty dope."},
  {tier = "A", year = 2004, title = "Godzilla: Final Wars",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/06/GodzillaFinalWarsPoster.jpg/220px-GodzillaFinalWarsPoster.jpg",
   blurb = "Relentlessly action-packed and exciting. It's pretty dumb, but, with "
        .. "action this fun, who cares?"},

  -- Monsterverse
  {tier = "B", year = 2014, title = "Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/1/10/Godzilla_%282014%29_poster.jpg",
   blurb = "Establishes an artistic identity all its own, but dedicates too "
        .. "much screentime to its generic protagonists."},
  {tier = "B", year = 2019, title = "Godzilla: King of the Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Godzilla_%E2%80%93_King_of_the_Monsters_%282019%29_poster.png/220px-Godzilla_%E2%80%93_King_of_the_Monsters_%282019%29_poster.png",
   blurb = "Presents believable monsters on an incredible scale, but keeps cutting "
        .. "away from fights just as they're getting good."},
  {tier = "B", year = 2021, title = "Godzilla vs Kong",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Godzilla_vs._Kong.png/220px-Godzilla_vs._Kong.png",
   blurb = "The plot is nonsense packed with sci-fi gobbledygook, but that bit where "
        .. "Kong performs a Mortal Kombat fatality on Mechagodzilla is gnarly as fuck."},
  {tier = nil, year = 2024, title = "Godzilla x Kong: The New Empire"},

  -- Reiwa
  {tier = "B", year = 2016, title = "Shin Godzilla",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Shin_Godzilla.png/220px-Shin_Godzilla.png",
   blurb = "Very analytical and believable, plus this design of Godzilla is one of "
        .. "the best. It was very dialogue-heavy, though, and dry at times."},
  {tier = "C", year = 2017, title = "Godzilla: Planet of Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/Godzilla_anime_design_reveal.jpg/220px-Godzilla_anime_design_reveal.jpg",
   blurb = "Cool visual style and excellent worldbuilding are dragged down by an "
        .. "almost insufferable protagonist."},
  {tier = "A", year = 2018, title = "Godzilla: City on the Edge of Battle",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/Godzilla_Anime_2_Poster.jpg/220px-Godzilla_Anime_2_Poster.jpg",
   blurb = "Takes the awful protagonist from Planet of Monsters and develops him "
        .. "into the most nuanced character in the franchise."},
  {tier = "A", year = 2018, title = "Godzilla: Planet Eater",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/0e/Anime_Godzilla_3.jpg/220px-Anime_Godzilla_3.jpg",
   blurb = "Ghidorah is reimagined here as a Lovecraftian eldritch horror, a very "
        .. "welcome twist that revitalizes the character and makes him more terrifying "
        .. "than ever."},

  -- Quatermass
  {tier = nil, year = 1955, title = "The Quatermass Xperiment"},
  {tier = nil, year = 1956, title = "X the Unknown"},
  {tier = nil, year = 1957, title = "Quatermass 2"},
  {tier = nil, year = 1967, title = "Quatermass and the Pit"},

  -- The Blob
  {tier = "B", year = 1958, title = "The Blob",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/The_Blob_%281958%29_theatrical_poster.jpg/220px-The_Blob_%281958%29_theatrical_poster.jpg",
   blurb = "Not enough of the titular blob, but the characters are well performed "
        .. "and endearing. Fairly light-hearted fun."},
  {tier = nil, year = 1972, title = "Beware! The Blob"},
  {tier = "A", year = 1988, title = "The Blob",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/The_Blob_%281988%29_theatrical_poster.jpg/220px-The_Blob_%281988%29_theatrical_poster.jpg",
   blurb = "Incredibly gruesome and disturbing, but not thoughtless."},

  -- Mothra
  {tier = "C", year = 1961, title = "Mothra",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Mothra_1961_poster.jpg/220px-Mothra_1961_poster.jpg",
   blurb = "beeeg moth :)"},
  {tier = "C", year = 1996, title = "Rebirth of Mothra",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/6f/Rebirthofmothraposter.jpg/220px-Rebirthofmothraposter.jpg",
   blurb = "Competently made, but decidedly more for Japanese tweens rather than "
        .. "Canadian adults."},
  {tier = "B", year = 1997, title = "Rebirth of Mothra II",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/18/Mothra2poster.jpg/220px-Mothra2poster.jpg",
   blurb = "Surprisingly high production value, but I really could've done without "
        .. "that shot which was filmed from the perspective of a man getting "
        .. "his face pissed on."},
  {tier = "C", year = 1998, title = "Rebirth of Mothra III",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Mothra3poster.jpg/220px-Mothra3poster.jpg",
   blurb = "I'm not sure what's going on with the plot, but the kaiju suits are "
        .. "top notch."},

  -- Gamera
  -- Showa
  {tier = "D", year = 1965, title = "Gamera, the Giant Monster",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/85/Gamera_%281965%29_Japanese_theatrical_poster.jpg/220px-Gamera_%281965%29_Japanese_theatrical_poster.jpg",
   blurb = "At its best when it embraces its goofy nature, but usually takes itself "
        .. "too seriously for a film with so little substance."},
  {tier = "A", year = 1966, title = "Gamera vs Barugon",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Gamera_vs_barugon_poster.gif/220px-Gamera_vs_barugon_poster.gif",
   blurb = "Shockingly good for a showa-era gamera film. Its budget and age "
        .. "both show, but it was crafted with love, artistry, and great attention "
        .. "to detail."},
  {tier = "B", year = 1967, title = "Gamera vs Gyaos",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/0f/Gamera_vs_gyaos_poster.jpg/220px-Gamera_vs_gyaos_poster.jpg",
   blurb = "Shallow characters and a kinda propaganda-y plot, but the special effects "
        .. "are well ahead of their time and the action is lots of fun."},
  {tier = "F", year = 1968, title = "Gamera vs Viras",
   poster = "https://upload.wikimedia.org/wikipedia/en/f/f3/Gamera_vs_Viras_1968.jpg",
   blurb = "Splicing in 30+ minutes of unedited footage from prior Gamera films is "
        .. "unforgivable, and the child protags are insufferable. Conspicuous sponsorship "
        .. "from The Boy Scouts of America."},
  {tier = "C", year = 1969, title = "Gamera vs Guiron",
   poster = "https://upload.wikimedia.org/wikipedia/en/5/50/Gamera_vs_gurion_poster.jpg",
   blurb = "The child protagonists are pretty irritating, but Guiron's cool."},
  {tier = "C", year = 1970, title = "Gamera vs Jiger",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Gamera_vs_Jiger_1970.jpg/220px-Gamera_vs_Jiger_1970.jpg",
   blurb = "Jiger is my least favourite Gamera kaiju, and the child protags are "
        .. "mildly annoying, but it's pretty funny in places and the action doesn't "
        .. "suck. Conspicuous sponsorship from Expo '70."},
  {tier = "E", year = 1971, title = "Gamera vs Zigra",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/Gamera_vs_zigra_poster.gif/220px-Gamera_vs_zigra_poster.gif",
   blurb = "The message about respecting the ocean is undercut by the scene where "
        .. "Gamera plays his own theme-tune on Zigra's spine like it's a xylophone "
        .. "and then sets him on fire. Conspicuous sponsorship from Kamogawa Sea World."},
  {tier = "F", year = 1980, title = "Gamera: Super Monster",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/0e/Gamerasupermonsterposter.jpg/220px-Gamerasupermonsterposter.jpg",
   blurb = "The bulk of the runtime is footage reused from prior Gamera films, "
        .. "and the new stuff has a \"home-made fan-film\" vibe."},

  -- Heisei
  {tier = "B", year = 1995, title = "Gamera: Guardian of the Universe",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Gamera_Theatrical_Poster.jpg/220px-Gamera_Theatrical_Poster.jpg",
   blurb = "The special effects, action, and lore, are all excellent, the mysterious "
        .. "and gradual build make the antagonistic kaiju even more intimidating, "
        .. "but the experience is dragged down by monotonic acting."},
  {tier = "A", year = 1996, title = "Gamera 2: Attack of Legion",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Gamera_2_Theatrical_Poster.jpg/220px-Gamera_2_Theatrical_Poster.jpg",
   blurb = "The lack of human character development will be offputting to some, but"
        .. "this film has some of the best realized monsters in the genre. A real "
        .. "visual pleasure."},
  {tier = "B", year = 1999, title = "Gamera 3: Revenge of Iris",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/ac/Gamera-3-poster.jpg/220px-Gamera-3-poster.jpg",
   blurb = "The most nuanced take on Gamera, and with fantastic special effects, "
        .. "but confusing and occasionally bland."},
  {tier = "S", year = 2006, title = "Gamera the Brave",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/2/21/Gamerthebraveposter.jpg/220px-Gamerthebraveposter.jpg",
   blurb = "A deeply personal and unique perspective on a classic-style kaiju story, "
        .. "as much about grief after the death of a loved one as it is about monsters."},

  -- Ultra Series
  -- Showa
  {tier = "C", year = 1966, title = "Ultra Q",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/a8/UltraQ-title.jpg/220px-UltraQ-title.jpg",
   blurb = "The better episodes perfectly capture the campy charm of showa-era kaiju, "
        .. "but there are a lot of misses."},
  {tier = "B", year = 1966, title = "Ultraman",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Ultraman_%281966%29_HD_Title_Card.png/220px-Ultraman_%281966%29_HD_Title_Card.png",
   blurb = "Tonally eclectic, often absurd, but consistently entertaining!"},
  {tier = nil, year = 1967, title = "Ultraseven"},
  {tier = nil, year = 1971, title = "Return of Ultraman"},
  {tier = nil, year = 1996, title = "Ultraman: Tiga"},
  {tier = nil, year = 1997, title = "Ultraman Dyna"},
  {tier = nil, year = 2004, title = "Ultra Q: Dark Fantasy"},
  {tier = nil, year = 2013, title = "Neo Ultra Q"},
  {tier = nil, year = 2022, title = "Shin Ultraman"},

  -- Daimajin
  {tier = "C", year = 1966, title = "Daimajin",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Daimajin.jpg/220px-Daimajin.jpg",
   blurb = "Although the titular Kaiju is fantastic, he's reserved for use as a "
        .. "deus-ex-machina at the end of an otherwise subpar film."},
  {tier = "D", year = 1966, title = "Return of Daimajin",
   poster = "https://media.movieassets.com/static/images/items/movies/posters/250/85/return-of-daimajin-bc17d3004066c9b1657ae2aad40b7818.jpg",
   blurb = "Basically the same exact thing as the first Daimajin, only now it isn't "
        .. "even novel."},
  {tier = "D", year = 1966, title = "Daimajin Strikes Again",
   poster = "https://images-na.ssl-images-amazon.com/images/I/91XbAbMPJtL._SX300_.jpg",
   blurb = "This has a somewhat more original story than Return of Daimajin, but "
        .. "the terribly acted child protags kill it."},

  -- Scooby Doo
  {tier = "C", year = 2004, title = "Scooby-Doo and the Loch Ness Monster",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Scooby-Doo_and_the_Loch_Ness_Monster.jpg/220px-Scooby-Doo_and_the_Loch_Ness_Monster.jpg",
   blurb = "Cute and lighthearted, but clearly made-for-tv. The animation looks "
        .. "very cheap in places."},
  {tier = "A", year = 2011, title = "Scooby-Doo! Legend of the Phantosaur",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/69/Scooby-Doo%21_Legend_of_the_Phantosaur.png/220px-Scooby-Doo%21_Legend_of_the_Phantosaur.png",
   blurb = "An excellent action-comedy, both hilarious and exciting, although not "
        .. "mysterious in the least."},

  -- Reigo, Raiga, Ohga
  {tier = "F", year = 2005, title = "Reigo: King of the Sea Monsters",
   poster = "https://cdn.shopify.com/s/files/1/0014/4500/3324/products/MVD2836D_95x95@2x.jpg?v=1580345957",
   blurb = "An all-around terrible alternate-history film that reaks of Japanese "
        .. "military propaganda."},
  {tier = "E", year = 2009, title = "Raiga: God of Monsters",
   poster = "https://cdn.shopify.com/s/files/1/0014/4500/3324/products/MVD3152D_95x95@2x.jpg?v=1580346098",
   blurb = "The plot is barely present, the characters are boring, and the CGI sucks, "
        .. "but the kaiju suit is decent."},
  {tier = "D", year = 2021, title = "God Raiga vs King Ohga: War of the Monsters",
   poster = "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_496,q_80,w_334/514928b057425b95d1c67779e69cfc6c.jpg",
   blurb = "As simple as the plot was, it was so bizarre in presentation that it "
        .. "was hard to follow nonetheless. Terrible in a way that was oddly "
        .. "captivating."},

  -- Mega Shark
  {tier = nil, year = 2009, title = "Mega Shark Versus Giant Octopus"},
  {tier = nil, year = 2010, title = "Mega Shark Versus Crocosaurus"},
  {tier = nil, year = 2014, title = "Mega Shark Versus Mecha Shark"},
  {tier = nil, year = 2015, title = "Mega Shark Versus Kolossus"},

  -- Pacific Rim
  {tier = "S", year = 2013, title = "Pacific Rim",
   poster = "https://upload.wikimedia.org/wikipedia/en/f/f3/Pacific_Rim_FilmPoster.jpeg",
   blurb = "The best fight scenes in the genre, a well developed setting, and an "
        .. "impressive attention to detail make this a distinct favourite of mine."},
  {tier = "C", year = 2018, title = "Pacific Rim: Uprising",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Pacific_Rim_-_Uprising_%282018_film%29.jpg/220px-Pacific_Rim_-_Uprising_%282018_film%29.jpg",
   blurb = "Feels more like a rip-off of Pacific Rim than a sequel."},
  {tier = "D", year = 2021, title = "Pacific Rim: The Black",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Pacific_Rim_The_Black_poster.jpeg/220px-Pacific_Rim_The_Black_poster.jpeg",
   blurb = "Constantly bleak and negative, with no levity to speak of. The kaiju "
        .. "are treated more like RPG random encounters than unique and powerful "
        .. "beings."},

  -- Dragon Lizard Lord Super Monsters
  {tier = "C", year = 2022, title = "Dragon Lizard Lord Super Monsters",
   poster = "https://img1.wsimg.com/isteam/ip/c3627ab8-fa28-42d0-bbaa-4b2a11ae3850/dlsmaller.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1300,h:800",
   blurb = "The incomprehensible and repetitive stream of disjoint audio and video "
        .. "has a hypnotic effect, captivating the audience. Still, it's "
        .. "not exactly a virtuous film."},
  {tier = "F", year = 2022, title = "Hammer of Draco Wrath of Dragons",
   poster = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Q2PG436HIfNis_Caig7KNAHaK_%26pid%3DApi&f=1&ipt=d92ccbfb2d305d9fa9c37ec236e29aac30ddd79aa98ab9874179a73ca75cdab0&ipo=images",
   blurb = "Hideous, incoherent, unfunny, grating. The worst feature film I've ever seen."},
  {tier = nil, year = "TBA",title = "Dragon Lizard Lord vs Gorilla Monkey King"},
  {tier = nil, year = "TBA",title = "Dragon Lizard Lord vs Avalon"},

  -- Misc
  -- Dinosaur-like
  {tier = "D", year = 1925, title = "The Lost World",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/The_Lost_World_%281925%29_-_film_poster.jpg/220px-The_Lost_World_%281925%29_-_film_poster.jpg",
   blurb = "Historically interesting, but lacking emotional depth, engaging narrative, "
        .. "and entertainment value. Conspicuous blackface."},
  {tier = nil, year = 1940, title = "One Million B.C."},
  {tier = "C", year = 1953, title = "The Beast from 20,000 Fathoms",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/40/Beast_from_20%2C000_Fathoms_poster.jpg/220px-Beast_from_20%2C000_Fathoms_poster.jpg",
   blurb = "One of \"the originals\", but, outside of Ray Harryhousen's fantastic "
        .. "beast, not exceptionally noteworthy."},
  {tier = nil, year = 1955, title = "King Dinosaur"},
  {tier = nil, year = 1956, title = "The Beast of Hollow Mountain"},
  {tier = nil, year = 1956, title = "Rodan"},
  {tier = nil, year = 1957, title = "The Land Unknown"},
  {tier = nil, year = 1958, title = "Varan"},
  {tier = nil, year = 1959, title = "The Giant Behemoth"},
  {tier = nil, year = 1960, title = "The Lost World"},
  {tier = nil, year = 1961, title = "Reptilicus"},
  {tier = nil, year = 1961, title = "Gorgo"},
  {tier = "C", year = 1966, title = "One Million Years B.C.",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Original_1966_UK_One_Million_Years_B.C._poster.jpeg/220px-Original_1966_UK_One_Million_Years_B.C._poster.jpeg",
   blurb = "Fairly one-note, portraying prehistoric life as almost entirely dominated "
        .. "by violence, but at least it has Harryhousen's stop motion and Welch's "
        .. "sex-appeal."},
  {tier = nil, year = 1967, title = "Yonggary"},
  {tier = nil, year = 1969, title = "The Valley of Gwangi"},
  {tier = nil, year = 1974, title = "The Land That Time Forgot"},
  {tier = nil, year = 1977, title = "The Crater Lake Monster"},
  {tier = nil, year = 1977, title = "Legend of Dinosaurs and Monster Birds"},
  {tier = nil, year = 1977, title = "The Last Dinosaur"},
  {tier = nil, year = 1983, title = "Attack of the Super Monsters"},
  {tier = "B", year = 1993, title = "Jurassic Park",
   poster = "https://upload.wikimedia.org/wikipedia/en/e/e7/Jurassic_Park_poster.jpg",
   blurb = "You already know Jurassic Park!"},
  {tier = "E", year = 1994, title = "Dinosaur Island",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Dinosaur_island_1994.jpg/220px-Dinosaur_island_1994.jpg",
   blurb = "Trashy and ridiculous. Leans heavily on sex-appeal, terrible one-liners "
        .. "abound, but fun in places anyway. Probably because of the boobies."},
  {tier = nil, year = 2008, title = "Loch Ness Terror"},
  {tier = "E", year = 2010, title = "Dinocroc vs Supergator",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Dinocroc_vs._Supergator_DVD.jpg/220px-Dinocroc_vs._Supergator_DVD.jpg",
   blurb = "It's aware of it's own shittiness, but does nothing worthwhile with that "
        .. "knowledge."},
  {tier = "C", year = 2019, title = "Howl from Beyond the Fog",
   poster = "https://image.tmdb.org/t/p/w300_and_h450_bestv2/yR8lbjg6hsGKkGgRgh2qqE8AaVt.jpg",
   blurb = "The monster steals the show, excellent in both design and execution. "
        .. "Unfortunately, the marionettes are not expressive enough, the digital "
        .. "visual-effects look ameturish, and the song choices are bizarre."},

  -- Bugs
  {tier = "C", year = 1954, title = "Them!",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Them02.jpg/220px-Them02.jpg",
   blurb = "Conventional 50s sci-fi fare - irradiated ants grow big (oh no!)."},
  {tier = "C", year = 1955, title = "Tarantula",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Tarantula_1955.jpg/220px-Tarantula_1955.jpg",
   blurb = "Conventional 50s sci-fi fare - irradiated spider grows big (oh no!)."},
  {tier = nil, year = 1957, title = "Beginning of the End"},
  {tier = nil, year = 1957, title = "The Black Scorpion"},
  {tier = nil, year = 1957, title = "The Deadly Mantis"},
  {tier = nil, year = 1957, title = "Monster from Green Hell"},
  {tier = nil, year = 1958, title = "The Spider"},
  {tier = nil, year = 1975, title = "The Giant Spider Invasion"},
  {tier = nil, year = 1977, title = "Empire of the Ants"},
  {tier = nil, year = 2000, title = "Spiders"},
  {tier = nil, year = 2001, title = "Arachnid"},
  {tier = nil, year = 2001, title = "Spiders II: Breeding Ground"},
  {tier = nil, year = 2002, title = "Eight Legged Freaks"},
  {tier = "C", year = 2013, title = "Big Ass Spider",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Bigassspider.png/220px-Bigassspider.png",
   blurb = "A spoof of B-movies that's mainly just a B-movie itself."},
  {tier = nil, year = 2015, title = "Lavalantula"},

  -- Sea Monsters
  {tier = "F", year = 1955, title = "It Came From Beneath the Sea",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/a/ab/It_Came_From_Beneath_The_Sea_poster.jpg/220px-It_Came_From_Beneath_The_Sea_poster.jpg",
   blurb = "Harryhousen's octopus is great, but there's more cringe-worthy romance"
        .. " than monster."},
  {tier = nil, year = 1956, title = "Moby Dick"},
  {tier = nil, year = 1957, title = "Attack of the Crab Monsters"},
  {tier = "E", year = 1957, title = "The Monster that Challenged the World",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Monsterchallengedtheworld.jpg/220px-Monsterchallengedtheworld.jpg",
   blurb = "\"There's several monsters and they barely challenge one town.\" "
        .. "- IMDB user 13FunBags"},
  {tier = nil, year = 1962, title = "Kujira Gami"},
  {tier = nil, year = 1978, title = "The Bermuda Depths"},
  {tier = nil, year = 1980, title = "Island Claws"},
  {tier = nil, year = 1998, title = "Deep Rising"},
  {tier = "B", year = 2022, title = "The Sea Beast",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/09/The_Sea_Beast_film_poster.png/220px-The_Sea_Beast_film_poster.png",
   blurb = "I would've taken the plot down a darker path, but I appreciate the occasional "
        .. "uplifting story as well."},
  {tier = nil, year = 2023, title = "Ruby Gillman, Teenage Kraken"},

  -- Aliens
  {tier = "D", year = 1957, title = "20 Million Miles To Earth",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/20_Million_Miles_to_Earth.jpg/220px-20_Million_Miles_to_Earth.jpg",
   blurb = "Ray Harryhousen's work in this film is as excellent as one would expect, "
        .. "but it has little else to offer. Thankfully, the monster is on-screen "
        .. "a lot."},
  {tier = "B", year = 1957, title = "The Giant Claw",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/GiantClawmp.jpg/220px-GiantClawmp.jpg",
   blurb = "The sharp contrast between the serious, competent actors, and the bizarre "
        .. "off-brand muppet of a monster makes this film unintentionally hilarious."},
  {tier = nil, year = 1957, title = "The Mysterians"},
  {tier = nil, year = 1957, title = "Kronos"},
  {tier = nil, year = 1964, title = "Dogora"},
  {tier = nil, year = 1967, title = "Space Monster, Wangmagwi"},
  {tier = nil, year = 1967, title = "The X from Outer Space"},
  {tier = nil, year = 1995, title = "Zarkorr: The Invader"},
  {tier = nil, year = 1995, title = "Neon Genesis Evangelion"},
  {tier = "B", year = 2010, title = "Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/3/35/MonstersUK.jpg/220px-MonstersUK.jpg",
   blurb = "Monsters is carried almost entirely on the shoulders of its fantastic actors."},
  {tier = nil, year = 2014, title = "Monsters: Dark Continent"},

  -- Giant Men
  {tier = nil, year = 1957, title = "The Cyclops"},
  {tier = nil, year = 1957, title = "The Amazing Colossal Man"},
  {tier = nil, year = 1958, title = "War of the Colossal Beast"},
  {tier = nil, year = 1976, title = "War God"},
  {tier = "C", year = 2007, title = "Big Man Japan",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/6/65/BigManJapan.jpg/220px-BigManJapan.jpg",
   blurb = "A man struggles to preserve his family business of growing giant to "
        .. "fight monsters. The jokes rarely land, but I enjoy the melancholic and "
        .. "frank look into the life of a professional hero."},

  -- Giantesses
  {tier = "C", year = 1958, title = "Attack of the 50 Foot Woman",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Attackofthe50ftwoman.jpg/220px-Attackofthe50ftwoman.jpg",
   blurb = "The OG giantess film! This movie has terrible special effects, and the "
        .. "story doesn't make a lot of sense, but it's kind-of endearing anyway."},
  {tier = "E", year = 1959, title = "The 30-Foot Bride of Candy Rock",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Thirtyfootbride.jpg/220px-Thirtyfootbride.jpg",
   blurb = "Lou Costello's performance lacks his signature high-energy goofery, "
        .. "and he clearly struggles playing the straight man. Other "
        .. "than that, it's a sexist and outdated movie about a man learning "
        .. "to control his wife."},
  {tier = "B", year = 1993, title = "Attack of the 50 Foot Woman",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Attack_of_the_50_ft_Woman_%281993_film%29.jpg/220px-Attack_of_the_50_ft_Woman_%281993_film%29.jpg",
   blurb = "Successfully utilizes the giantess as a symbol of female empowerment, "
        .. "but does get pretty preachy towards the end."},
  {tier = nil, year = 1994, title = "Attack of the 50 Foot Hooker"},
  {tier = "D", year = 1995, title = "Attack of the 60 Foot Centerfold",
   poster = "https://upload.wikimedia.org/wikipedia/en/d/d3/Attack_of_the_60_Foot_Centerfold.jpg",
   blurb = "Occasionally tasteless, but endearingly shameless."},
  {tier = "D", year = 2012, title = "Attack of the 50 Foot Cheerleader",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Attack_Of_The_50_Foot_Cheerleader_Poster.jpg/220px-Attack_Of_The_50_Foot_Cheerleader_Poster.jpg",
   blurb = "Surprisingly tasteful, given the overt sexuality of it all."},
  {tier = "F", year = 2022, title = "Attack of the 50 Foot Camgirl",
   poster = "https://m.media-amazon.com/images/I/81+aiH4NYSL._SX342_.jpg",
   blurb = "A soft-core porn parody that lacks both laughs and sex-appeal. The "
        .. "vile characters and horrible acting take the experience from boring "
        .. "to unpleasant."},
  {tier = "E", year = 2022, title = "Giantess Battle Attack",
   poster = "https://m.media-amazon.com/images/I/61YbSZ3HSJL._SX300_SY300_QL70_ML2_.jpg",
   blurb = "Completely idiotic and immature, but it did manage to wring a few "
        .. "reluctant laughs out of me."},

  -- Dragons
  {tier = "D", year = 1963, title = "Atragon",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Atragon_1963.jpg/220px-Atragon_1963.jpg",
   blurb = "Suffers from one of the worst dubs I've ever heard."},
  {tier = nil, year = 1966, title = "The Magic Serpent"},
  {tier = nil, year = 1982, title = "Q: The Winged Serpent"},
  {tier = nil, year = 1994, title = "Orochi, the Eight-Headed Dragon"},
  {tier = nil, year = 2007, title = "D-War"},
  {tier = nil, year = 2023, title = "Brush of the God"},

  -- Others
  {tier = nil, year = 1929, title = "The Mysterious Island"},
  {tier = nil, year = 1955, title = "Half Human"},
  {tier = "C", year = 1957, title = "The Monolith Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/The_Monolith_Monsters.jpg/220px-The_Monolith_Monsters.jpg",
   blurb = "A mineral menaces a town. Creative premise, but quite conventional in "
        .. "execution."},
  {tier = nil, year = 1958, title = "The H-Man"},
  {tier = nil, year = 1959, title = "The Giant Gila Monster"},
  {tier = nil, year = 1958, title = "The Strange World of Planet X"},
  {tier = "D", year = 1959, title = "Caltiki - The Immortal Monster",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/0/0d/Caltiki_%E2%80%93_The_Immortal_Monster_poster.jpg/220px-Caltiki_%E2%80%93_The_Immortal_Monster_poster.jpg",
   blurb = "The special effects work is quite impressive for a 1959 film from "
        .. "Italy, but it was clearly very low budget and mostly stuck to standard "
        .. "conventions of the genre."},
  {tier = nil, year = 1959, title = "The Angry Red Planet"},
  {tier = nil, year = 1961, title = "Mysterious Island"},
  {tier = nil, year = 1962, title = "Gorath"},
  {tier = "C", year = 1965, title = "Frankensein vs Baragon",
   poster = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Frankenstein_vs._Baragon_Japanese_Theatrical_poster.jpg/220px-Frankenstein_vs._Baragon_Japanese_Theatrical_poster.jpg",
   blurb = "A giant frankenstein oddly kind of does it for me. Only kind of, though."},
  {tier = nil, year = 1966, title = "War of the Gargantuas"},
  {tier = nil, year = 1968, title = "Phantom Monster Agon"},
  {tier = nil, year = 1967, title = "Gappa, the Triphibian Monster"},
  {tier = nil, year = 1969, title = "Latitude Zero"},
  {tier = nil, year = 1970, title = "Equinox"},
  {tier = nil, year = 1970, title = "Space Amoeba"},
  {tier = nil, year = 1972, title = "Daigoro vs Goliath"},
  {tier = nil, year = 1976, title = "At the Earth's Core"},
  {tier = nil, year = 1976, title = "The Food of the Gods"},
  {tier = nil, year = 1977, title = "The Mighty Peking Man"},
  {tier = nil, year = 1977, title = "Goliathon"},
  {tier = "D", year = 1979, title = "Prophecy",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/4/4f/Prophecy_%281979_movie_poster%29.jpg/220px-Prophecy_%281979_movie_poster%29.jpg",
   blurb = "Ignoring the nonsense plot, the weak characters, and the questionable "
        .. "casting, Prophecy at least does an excellent job of establishing a tense "
        .. "atmosphere."},
  {tier = nil, year = 1981, title = "Clash of the Titans"},
  {tier = nil, year = 1985, title = "The Stuff"},
  {tier = nil, year = 1985, title = "Pulgasari"},
  {tier = nil, year = 1985, title = "War of the God Monsters"},
  {tier = nil, year = 1988, title = "Thunder Of Gigantic Serpent"},
  {tier = "A", year = 1990, title = "Tremors",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Tremors_official_theatrical_poster.jpg/220px-Tremors_official_theatrical_poster.jpg",
   blurb = "An action horror-comedy that succeeds in just about everything it sets "
        .. "out to do. Spoofs on various genre tropes without ever getting too self-"
        .. "referential."},
  {tier = "S", year = 1997, title = "Princess Mononoke",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Princess_Mononoke_Japanese_poster.png/220px-Princess_Mononoke_Japanese_poster.png",
   blurb = "Yes, this is a kaiju film (and a damn good one!). I will die on this hill."},
  {tier = nil, year = 2000, title = "Sakuya, The Slayer of Demons"},
  {tier = nil, year = 2004, title = "Monster Island"},
  {tier = nil, year = 2005, title = "The Great Yokai War"},
  {tier = nil, year = 2005, title = "Negadon: The Monster from Mars"},
  {tier = "A", year = 2006, title = "The Host",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/5/55/The_Host_film_poster.jpg/220px-The_Host_film_poster.jpg",
   blurb = "Tense, disturbing, tragic, and with something to say (although it's "
        .. "not really clear what)."},
  {tier = nil, year = 2006, title = "Mammoth"},
  {tier = nil, year = 2006, title = "Monster House"},
  {tier = "A", year = 2008, title = "Cloverfield",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Cloverfield_theatrical_poster.jpg/220px-Cloverfield_theatrical_poster.jpg",
   blurb = "A character-driven horror film with fantastic acting, cool monsters, "
        .. "and some genuine scares."},
  {tier = nil, year = 2008, title = "Monster"},
  {tier = nil, year = 2009, title = "Mighty Lady Sparkle"},
  {tier = nil, year = 2009, title = "Bakunyu Sentai Pairanger"},
  {tier = "D", year = 2009, title = "Monsters vs Aliens",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/7/76/Monsters-vs-aliens-poster.jpg/220px-Monsters-vs-aliens-poster.jpg",
   blurb = "Immature, unfunny, but kinda cute, and the action doesn't suck."},
  {tier = nil, year = 2009, title = "Gehara: The Dark & Long Hair Monster"},
  {tier = "S", year = 2010, title = "Trollhunter",
   poster = "https://upload.wikimedia.org/wikipedia/en/1/1e/TrollHunter.jpg",
   blurb = "Original, human, and able to engender sympathy for the monsters without "
        .. "ever getting sappy."},
  {tier = nil, year = 2011, title = "Behemoth"},
  {tier = "B", year = 2012, title = "Grabbers",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/1a/Grabbers.jpg/220px-Grabbers.jpg",
   blurb = "A thoroughly entertaining horror-comedy, marred only by a romance subplot "
        .. "that feels forced."},
  {tier = "A", year = 2016, title = "Colossal",
   poster = "https://upload.wikimedia.org/wikipedia/en/3/33/Colossal_%28film%29.png",
   blurb = "Darker than I expected, and in different ways than I would have guessed, "
        .. "but beautifully cathartic."},
  {tier = nil, year = 2016, title = "A Monster Calls"},
  {tier = nil, year = 2017, title = "I Kill Giants"},
  {tier = nil, year = 2017, title = "The Ritual"},
  {tier = nil, year = 2017, title = "Boar"},
  {tier = nil, year = 2018, title = "Koujin"},
  {tier = "C", year = 2018, title = "Rampage",
   poster = "https://upload.wikimedia.org/wikipedia/en/6/6b/Rampage_teaser_film_poster.jpg",
   blurb = "It's a bit disappointing to see the goofy video game "
        .. "classic Rampage converted into such a by-the-numbers blockbuster, but "
        .. "I'd be lying if I said I didn't have fun."},
  {tier = nil, year = 2018, title = "Lake Michigan Monster"},
  {tier = nil, year = 2018, title = "The Great Buddha: Arrival"},
  {tier = nil, year = 2019, title = "It Wants Blood!"},
  {tier = nil, year = 2019, title = "Cencoroll Connect"},
  {tier = nil, year = 2019, title = "Notzilla"},
  {tier = nil, year = 2019, title = "Yagon the Water Monster"},
  {tier = nil, year = 2020, title = "The Great Beast of Shennong"},
  {tier = nil, year = 2020, title = "Nezura 1964"},
  {tier = "A", year = 2020, title = "Love and Monsters",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/1/1a/LoveAndMonstersPoster.jpeg/220px-LoveAndMonstersPoster.jpeg",
   blurb = "A coming of age story, with an immersive setting, compelling characters, "
        .. "and no shortage of monster action."},
  {tier = nil, year = 2020, title = "Underwater"},
  {tier = nil, year = 2021, title = "The Great Yokai War: Guardians"},
  {tier = nil, year = 2021, title = "Uktena: The Horned Monstrosity"},
  {tier = nil, year = 2022, title = "What to Do With the Dead Kaiju?"},
  {tier = nil, year = 2022, title = "Turning Red"},
  {tier = nil, year = 2022, title = "Yuzo the Biggest Battle in Tokyo"},
  {tier = nil, year = 2022, title = "The Lake"},
  {tier = "B", year = 2022, title = "Troll",
   poster = "https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Troll_%282022%29.jpeg/220px-Troll_%282022%29.jpeg",
   blurb = "Comprised almost entirely of established kaiju & blockbuster tropes, but "
        .. "expertly constructed."},
  {tier = nil, year = 2023, title = "Devil Beneath"},
  {tier = nil, year = 2023, title = "The Beast Below"},
}

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

return toWatch
