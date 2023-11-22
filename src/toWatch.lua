local toWatch = {
  -- King Kong
  {tier = "B", year = 1933, title = "King Kong",
   blurb = "A grim spectacle of prehistoric violence brought into the modern world."},
  {tier = "D", year = 1933, title = "Son of Kong",
   blurb = "Recognizes that Skull Island is interesting enough without Kong to "
        .. "still have a fun story, but decidedly on the slow side. Lacks purpose."},
  {tier = "C", year = 1967, title = "King Kong Escapes",
   blurb = "Surprisingly, a lot of kaiju films take heavy inspiration from James Bond, "
        .. "though they don't tend to match its budget. This is one such film."},
  {tier = "D", year = 1976, title = "King Kong",
   blurb = "This retelling changes the plot in some truly idiotic ways, and far "
        .. "too much focus is placed on the sexual aspects of the story at the expense "
        .. "of the action."},
  {tier = "E", year = 1986, title = "King Kong Lives",
   blurb = "He's alive and he's horny, what more could you ask for? A lot, actually. "
        .. "On the bright side, you get to see Linda Hamilton's right nipple for a frame or two."},
  {tier = "F", year = 1998, title = "The Mighty Kong",
   blurb = "A perplexingly awful attempt at a child-friendly retelling of a horror "
        .. "movie about a rapist gorilla."},
  {tier = "S", year = 2005, title = "King Kong",
   blurb = "It may be 3 hours long, but it earns its runtime. A dark fantasy epic "
        .. "about nature's loss of divinity in the industrial age."},
  {tier = "B", year = 2017, title = "Kong: Skull Island",
   blurb = "Delivers on the action, but feels very generic."},
  {tier = "C", year = 2023, title = "Skull Island",
   blurb = "Pretty much exactly what you'd expect from an action/adventure animated "
        .. "series on Netflix."},

  -- Godzilla
  -- Showa
  {tier = "A", year = 1954, title = "Godzilla",
   blurb = "An evocative and aggressively political tragedy. Still one of the best "
        .. "examples of monster-as-a-metaphor in film."},
  {tier = "E", year = 1955, title = "Godzilla Raids Again",
   blurb = "A frankly pathetic sequel, lacking both heart and flare."},
  {tier = "D", year = 1956, title = "Godzilla: King of the Monsters!",
   blurb = "Don't expect a localization of the OG Godzilla, this is so heavily "
        .. "edited that it's basically a new film that just scrapped Godzilla for "
        .. "stock footage."},
  {tier = "B", year = 1962, title = "King Kong vs Godzilla (Japan)",
   blurb = "A slapstick reimagining of the titular beasts - silly, but pretty fun."},
  {tier = "C", year = 1963, title = "King Kong vs Godzilla (USA)",
   blurb = "Why did Americans of this era always feel the need to make stupid edits "
        .. "when localizing perfectly good foreign films?"},
  {tier = "C", year = 1964, title = "Mothra vs Godzilla",
   blurb = "Enticingly mysterious and mystical, but Godzilla's portrayal is fairly "
        .. "unintimidating and the fight scenes are repetitive."},
  {tier = "C", year = 1964, title = "Ghidorah, the Three-Headed Monster",
   blurb = "Has some memorable shots, such as Ghidorah hatching, but was largely "
        .. "kind of forgettable."},
  {tier = "C", year = 1965, title = "Invasion of Astro-Monster",
   blurb = "An American/Japanese co-production. It's clear when watching that the "
        .. "American lead actor is speaking English, whereas the Japanese actors "
        .. "speak Japanese, so all language options involve some dubbing."},
  {tier = "D", year = 1966, title = "Ebirah, Horror of the Deep",
   blurb = "Godzilla plays a knock-off King Kong in this knock-off James Bond film."},
  {tier = "B", year = 1967, title = "Son of Godzilla",
   blurb = "A self-parody, irreverent of everything that Godzilla stands for. "
        .. "Succeeds in eliciting many a laugh."},
  {tier = "B", year = 1968, title = "Destroy All Monsters",
   blurb = "A mashup of every monster they had sitting in the closet at time of "
        .. "shooting. The final fight is too one-sided to be tense, but it is "
        .. "fun to watch all the other kaiju kicking the shit out of Ghidorah."},
  {tier = "E", year = 1969, title = "All Monsters Attack",
   blurb = "A film about a small boy learning how to stand up to bullies. Not horribly "
        .. "made, but lacks anything to appeal to adults."},
  {tier = "D", year = 1971, title = "Godzilla vs Hedorah",
   blurb = "Weird, and not in a good way."},
  {tier = "B", year = 1972, title = "Godzilla vs Gigan",
   blurb = "Put me in mind of Scooby Doo; a goofy story about a rag-tag team of young "
        .. "adults investigating the Mysterious Upcoming Amusement Park(tm)."},
  {tier = "E", year = 1973, title = "Godzilla vs Megalon",
   blurb = "About as nonsensical as they come, and without enough action to even "
        .. "pass as dumb fun. Reuses a lot of footage from prior films."},
  {tier = "B", year = 1974, title = "Godzilla vs Mechagodzilla",
   blurb = "Mechagodzilla is spectacular in a fight, owing to his myriad weapons "
        .. "and gadgets. The writing is uncharacteristically strong as well."},
  {tier = "C", year = 1975, title = "Terror of Mechagodzilla",
   blurb = "Titanosaurus is pretty cool, I guess."},

  -- Heisei
  {tier = "D", year = 1984, title = "The Return of Godzilla",
   blurb = "A dark take on Godzilla that retains the silliness of the Showa films, "
        .. "making it hard for the audience to take it as seriously as it takes itself."},
  {tier = "B", year = 1989, title = "Godzilla vs Biollante",
   blurb = "Biollante, and the parts of the film that focus on her, are incredible. "
        .. "Unfortunately, much of the film focuses instead on a fairly conventional "
        .. "story about Godzilla fighting a flaccid military, and the ending is a "
        .. "complete cop-out."},
  {tier = "D", year = 1991, title = "Godzilla vs King Ghidorah",
   blurb = "The Godzilla franchise is not known for great writing, but Godzilla "
        .. "vs King Ghidorah is exceptionally terrible in that respect. Complete "
        .. "gibberish from beginning to end."},
  {tier = "C", year = 1992, title = "Godzilla and Mothra: The Battle For Earth",
   blurb = "The action's fun, but at times it feels like the writers forgot what "
        .. "the story was and bizarre things happen."},
  {tier = "A", year = 1993, title = "Godzilla vs Mechagodzilla II",
   blurb = "Just an all-around really solid action movie - Mechagodzilla is a real "
        .. "spectacle on the battlefield."},
  {tier = "D", year = 1994, title = "Godzilla vs Spacegodzilla",
   blurb = "So forgettable that I can't think of anything else to say."},
  {tier = "A", year = 1995, title = "Godzilla vs Destoroya",
   blurb = "One of the most intimidating Godzillas faces off with his most intimidating "
        .. "foe. High stakes and awesome visuals keep the excitement high."},

  -- Tristar
  {tier = "D", year = 1998, title = "Godzilla",
   blurb = "Not a faithful interpretation of Godzilla, and, at times, the weird pacing "
        .. "makes it feel more like an extended trailer than an actual movie."},

  -- Millenium
  {tier = "C", year = 1999, title = "Godzilla 2000",
   blurb = "Mostly kind of crap, but the awesome climactic battle saves it."},
  {tier = "D", year = 2000, title = "Godzilla vs Megaguirus",
   blurb = "Beautiful practical effects give way to downright ameturish CGI, just "
        .. "in time for the climax."},
  {tier = "S", year = 2001, title = "Godzilla, Mothra, and King Ghidorah: Giant Monsters All-Out Attack",
   blurb = "The essence of kaiju cinema, refined and presented beautifully."},
  {tier = "C", year = 2002, title = "Godzilla Against Mechagodzilla",
   blurb = "Sets up enthralling philisophical questions with Kiryu, but has little "
        .. "interest in exploring them in depth."},
  {tier = "B", year = 2003, title = "Godzilla: Tokyo SOS",
   blurb = "A sequel to Godzilla Against Mechagodzilla. Still doesn't sufficiently "
        .. "address the obvious moral questions, but Kiryu suplexes Godzilla and "
        .. "that is pretty dope."},
  {tier = "A", year = 2004, title = "Godzilla: Final Wars",
   blurb = "Relentlessly action-packed and exciting. It's pretty dumb, but, with "
        .. "action this fun, who cares?"},

  -- Monsterverse
  {tier = "B", year = 2014, title = "Godzilla",
   blurb = "Establishes an artistic identity all its own, but dedicates too "
        .. "much screentime to its generic protagonists."},
  {tier = "B", year = 2019, title = "Godzilla: King of the Monsters",
   blurb = "Presents believable monsters on an incredible scale, but keeps cutting "
        .. "away from fights just as they're getting good."},
  {tier = "B", year = 2021, title = "Godzilla vs Kong",
   blurb = "The plot is nonsense packed with sci-fi gobbledygook, but that bit where "
        .. "Kong performs a Mortal Kombat fatality on Mechagodzilla is gnarly as fuck."},
  {tier = nil, year = 2024, title = "Godzilla x Kong: The New Empire"},

  -- Reiwa
  {tier = "B", year = 2016, title = "Shin Godzilla",
   blurb = "Very analytical and believable, plus this design of Godzilla is one of "
        .. "the best. It was very dialogue-heavy, though, and dry at times."},
  {tier = "C", year = 2017, title = "Godzilla: Planet of Monsters",
   blurb = "Cool visual style and excellent worldbuilding are dragged down by an "
        .. "almost insufferable protagonist."},
  {tier = "A", year = 2018, title = "Godzilla: City on the Edge of Battle",
   blurb = "Takes the awful protagonist from Planet of Monsters and develops him "
        .. "into the most nuanced character in the franchise."},
  {tier = "A", year = 2018, title = "Godzilla: Planet Eater",
   blurb = "Ghidorah is reimagined here as a Lovecraftian eldritch horror, a very "
        .. "welcome twist that revitalizes the character and makes him more terrifying "
        .. "than ever."},
  {tier = "B", year = 2021, title = "Godzilla Singular Point",
   blurb = "Excellent characters, enthralling mystery, marred by inconsistent animation "
        .. "and an excessively slow start."},
  {tier = nil, year = 2023, title = "Godzilla Minus One"},

  -- Quatermass
  {tier = nil, year = 1955, title = "The Quatermass Xperiment"},
  {tier = nil, year = 1956, title = "X the Unknown"},
  {tier = nil, year = 1957, title = "Quatermass 2"},
  {tier = nil, year = 1967, title = "Quatermass and the Pit"},

  -- The Blob
  {tier = "B", year = 1958, title = "The Blob",
   blurb = "Not enough of the titular blob, but the characters are well performed "
        .. "and endearing. Fairly light-hearted fun."},
  {tier = nil, year = 1972, title = "Beware! The Blob"},
  {tier = "A", year = 1988, title = "The Blob",
   blurb = "Incredibly gruesome and disturbing, but not thoughtless."},

  -- Mothra
  {tier = "C", year = 1961, title = "Mothra",
   blurb = "beeeg moth :)"},
  {tier = "C", year = 1996, title = "Rebirth of Mothra",
   blurb = "Competently made, but decidedly more for Japanese tweens rather than "
        .. "Canadian adults."},
  {tier = "B", year = 1997, title = "Rebirth of Mothra II",
   blurb = "Surprisingly high production value, but I really could've done without "
        .. "that shot which was filmed from the perspective of a man getting "
        .. "his face pissed on."},
  {tier = "C", year = 1998, title = "Rebirth of Mothra III",
   blurb = "I'm not sure what's going on with the plot, but the kaiju suits are "
        .. "top notch."},

  -- Gamera
  -- Showa
  {tier = "D", year = 1965, title = "Gamera, the Giant Monster",
   blurb = "At its best when it embraces its goofy nature, but usually takes itself "
        .. "too seriously for a film with so little substance."},
  {tier = "A", year = 1966, title = "Gamera vs Barugon",
   blurb = "Shockingly good for a showa-era gamera film. Its budget and age "
        .. "both show, but it was crafted with love, artistry, and great attention "
        .. "to detail."},
  {tier = "B", year = 1967, title = "Gamera vs Gyaos",
   blurb = "Shallow characters and a kinda propaganda-y plot, but the special effects "
        .. "are well ahead of their time and the action is lots of fun."},
  {tier = "F", year = 1968, title = "Gamera vs Viras",
   blurb = "Splicing in 30+ minutes of unedited footage from prior Gamera films is "
        .. "unforgivable, and the child protags are insufferable. Conspicuous sponsorship "
        .. "from The Boy Scouts of America."},
  {tier = "C", year = 1969, title = "Gamera vs Guiron",
   blurb = "The child protagonists are pretty irritating, but Guiron's cool."},
  {tier = "C", year = 1970, title = "Gamera vs Jiger",
   blurb = "Jiger is my least favourite Gamera kaiju, and the child protags are "
        .. "mildly annoying, but it's pretty funny in places and the action doesn't "
        .. "suck. Conspicuous sponsorship from Expo '70."},
  {tier = "E", year = 1971, title = "Gamera vs Zigra",
   blurb = "The message about respecting the ocean is undercut by the scene where "
        .. "Gamera plays his own theme-tune on Zigra's spine like it's a xylophone "
        .. "and then sets him on fire. Conspicuous sponsorship from Kamogawa Sea World."},
  {tier = "F", year = 1980, title = "Gamera: Super Monster",
   blurb = "The bulk of the runtime is footage reused from prior Gamera films, "
        .. "and the new stuff has a \"home-made fan-film\" vibe."},

  -- Heisei
  {tier = "B", year = 1995, title = "Gamera: Guardian of the Universe",
   blurb = "The special effects, action, and lore, are all excellent, the mysterious "
        .. "and gradual build make the antagonistic kaiju even more intimidating, "
        .. "but the experience is dragged down by monotonic acting."},
  {tier = "A", year = 1996, title = "Gamera 2: Attack of Legion",
   blurb = "The lack of human character development will be offputting to some, but "
        .. "this film has some of the best realized monsters in the genre. A real "
        .. "visual pleasure."},
  {tier = "B", year = 1999, title = "Gamera 3: Revenge of Iris",
   blurb = "The most nuanced take on Gamera, and with fantastic special effects, "
        .. "but confusing and occasionally bland."},
  {tier = "S", year = 2006, title = "Gamera the Brave",
   blurb = "A deeply personal and unique perspective on a classic-style kaiju story, "
        .. "as much about grief after the death of a loved one as it is about monsters."},

  -- Reiwa
  {tier = nil, year = 2023, title = "Gamera: Rebirth"},

  -- Ultra Series
  -- Showa
  {tier = "C", year = 1966, title = "Ultra Q",
   blurb = "The better episodes perfectly capture the campy charm of showa-era kaiju, "
        .. "but there are a lot of misses."},
  {tier = "B", year = 1966, title = "Ultraman",
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
   blurb = "Although the titular Kaiju is fantastic, he's reserved for use as a "
        .. "deus-ex-machina at the end of an otherwise subpar film."},
  {tier = "D", year = 1966, title = "Return of Daimajin",
   blurb = "Basically the same exact thing as the first Daimajin, only now it isn't "
        .. "even novel."},
  {tier = "D", year = 1966, title = "Daimajin Strikes Again",
   blurb = "This has a somewhat more original story than Return of Daimajin, but "
        .. "the terribly acted child protags kill it."},

  -- Scooby Doo
  {tier = "C", year = 2004, title = "Scooby-Doo and the Loch Ness Monster",
   blurb = "Cute and lighthearted, but clearly made-for-tv. The animation looks "
        .. "very cheap in places."},
  {tier = "A", year = 2011, title = "Scooby-Doo! Legend of the Phantosaur",
   blurb = "An excellent action-comedy, both hilarious and exciting, although not "
        .. "mysterious in the least."},

  -- Reigo, Raiga, Ohga
  {tier = "F", year = 2005, title = "Reigo: King of the Sea Monsters",
   blurb = "An all-around terrible alternate-history film that reaks of Japanese "
        .. "military propaganda."},
  {tier = "E", year = 2009, title = "Raiga: God of Monsters",
   blurb = "The plot is barely present, the characters are boring, and the CGI sucks, "
        .. "but the kaiju suit is decent."},
  {tier = "D", year = 2021, title = "God Raiga vs King Ohga: War of the Monsters",
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
   blurb = "The best fight scenes in the genre, a well developed setting, and an "
        .. "impressive attention to detail make this a distinct favourite of mine."},
  {tier = "C", year = 2018, title = "Pacific Rim: Uprising",
   blurb = "Feels more like a rip-off of Pacific Rim than a sequel."},
  {tier = "D", year = 2021, title = "Pacific Rim: The Black",
   blurb = "Constantly bleak and negative, with no levity to speak of. The kaiju "
        .. "are treated more like RPG random encounters than unique and powerful "
        .. "beings."},

  -- Dragon Lizard Lord Super Monsters
  {tier = "C", year = 2022, title = "Dragon Lizard Lord Super Monsters",
   blurb = "The incomprehensible and repetitive stream of disjoint audio and video "
        .. "has a hypnotic effect, captivating the audience. Still, it's "
        .. "not exactly a virtuous film."},
  {tier = "F", year = 2022, title = "Hammer of Draco Wrath of Dragons",
   blurb = "Hideous, incoherent, unfunny, grating. Every single scene is insufferable."},
  {tier = nil, year = "TBA",title = "Dragon Lizard Lord vs Gorilla Monkey King"},
  {tier = nil, year = "TBA",title = "Dragon Lizard Lord vs Avalon"},

  -- Misc
  -- Dinosaur-like
  {tier = "E", year = 1925, title = "The Lost World",
   blurb = "Historically interesting, but lacking emotional depth, engaging narrative, "
        .. "and entertainment value. Conspicuous blackface."},
  {tier = nil, year = 1940, title = "One Million B.C."},
  {tier = "C", year = 1953, title = "The Beast from 20,000 Fathoms",
   blurb = "One of \"the originals\", but, outside of Ray Harryhousen's fantastic "
        .. "beast, not exceptionally noteworthy."},
  {tier = "F", year = 1955, title = "King Dinosaur",
   blurb = "Imagine my disappointment when, after an uneventful first 40 minutes, "
        .. "the therapod on the poster turned out to be another fucking iguana."},
  {tier = nil, year = 1956, title = "The Beast of Hollow Mountain"},
  {tier = "C", year = 1956, title = "Rodan",
   blurb = "Suspenseful first two acts, but the climax lacked a certain je ne sais "
        .. "pas. At least the visuals were excellent throughout."},
  {tier = nil, year = 1957, title = "The Land Unknown"},
  {tier = nil, year = 1958, title = "Varan"},
  {tier = nil, year = 1959, title = "The Giant Behemoth"},
  {tier = "E", year = 1960, title = "The Lost World",
   blurb = "The use of live reptiles with spikes glued on to portray dinosaurs is "
        .. "made all the more disgusting by the dino-on-dino fight scene. No blackface "
        .. "this time, but still pretty racist."},
  {tier = nil, year = 1961, title = "Reptilicus"},
  {tier = nil, year = 1961, title = "Gorgo"},
  {tier = "C", year = 1966, title = "One Million Years B.C.",
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
   blurb = "You already know Jurassic Park!"},
  {tier = nil, year = 2008, title = "Loch Ness Terror"},
  {tier = "E", year = 2010, title = "Dinocroc vs Supergator",
   blurb = "It's aware of it's own shittiness, but does nothing worthwhile with that "
        .. "knowledge."},
  {tier = "C", year = 2019, title = "Howl from Beyond the Fog",
   blurb = "The monster steals the show, excellent in both design and execution. "
        .. "Unfortunately, the marionettes are not expressive enough, the digital "
        .. "visual-effects look ameturish, and the song choices are bizarre."},

  -- Bugs
  {tier = "C", year = 1954, title = "Them!",
   blurb = "Conventional 50s sci-fi fare - irradiated ants grow big (oh no!)."},
  {tier = "C", year = 1955, title = "Tarantula",
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
  {tier = "C", year = 2002, title = "Eight Legged Freaks",
   blurb = "Although nothing about this movie is even a little bit surprising, "
        .. "the quirky characters and visual gags keep things light and fun."},
  {tier = "C", year = 2013, title = "Big Ass Spider",
   blurb = "A spoof of B-movies that's mainly just a B-movie itself."},
  {tier = nil, year = 2015, title = "Lavalantula"},

  -- Sea Monsters
  {tier = "E", year = 1955, title = "It Came From Beneath the Sea",
   blurb = "Harryhousen's octopus is great, but there's more cringe-worthy romance"
        .. " than monster."},
  {tier = nil, year = 1956, title = "Moby Dick"},
  {tier = nil, year = 1957, title = "Attack of the Crab Monsters"},
  {tier = "E", year = 1957, title = "The Monster that Challenged the World",
   blurb = "\"There's several monsters and they barely challenge one town.\" "
        .. "- IMDB user 13FunBags"},
  {tier = nil, year = 1962, title = "Kujira Gami"},
  {tier = nil, year = 1978, title = "The Bermuda Depths"},
  {tier = nil, year = 1980, title = "Island Claws"},
  {tier = nil, year = 1998, title = "Deep Rising"},
  {tier = "D", year = 2018, title = "The Meg",
   blurb = "Basically a 150 million USD B-movie. But at the end they put "
        .. "the word \"fin\" on the screen, so I guess that makes up for it."},
  {tier = "C", year = 2022, title = "The Sea Beast",
   blurb = "I would've taken the plot down a darker path, but I appreciate the occasional "
        .. "uplifting story as well."},
  {tier = nil, year = 2023, title = "Ruby Gillman, Teenage Kraken"},

  -- Aliens
  {tier = "D", year = 1957, title = "20 Million Miles To Earth",
   blurb = "Ray Harryhousen's work in this film is as excellent as one would expect, "
        .. "but it has little else to offer. Thankfully, the monster is on-screen "
        .. "a lot."},
  {tier = "B", year = 1957, title = "The Giant Claw",
   blurb = "The sharp contrast between the serious, competent actors, and the bizarre "
        .. "off-brand muppet of a monster makes this film unintentionally hilarious."},
  {tier = nil, year = 1957, title = "The Mysterians"},
  {tier = nil, year = 1957, title = "Kronos"},
  {tier = nil, year = 1964, title = "Dogora"},
  {tier = "D", year = 1967, title = "Space Monster, Wangmagwi",
   blurb = "A collection of comedic (albeit not especially funny) vignettes set during "
        .. "a fairly flaccid and one-note alien invasion."},
  {tier = nil, year = 1967, title = "The X from Outer Space"},
  {tier = nil, year = 1995, title = "Zarkorr: The Invader"},
  {tier = nil, year = 1995, title = "Neon Genesis Evangelion"},
  {tier = "B", year = 2010, title = "Monsters",
   blurb = "Monsters is carried almost entirely on the shoulders of its fantastic actors."},
  {tier = nil, year = 2014, title = "Monsters: Dark Continent"},

  -- Giant Men
  {tier = nil, year = 1957, title = "The Cyclops"},
  {tier = nil, year = 1957, title = "The Amazing Colossal Man"},
  {tier = nil, year = 1958, title = "War of the Colossal Beast"},
  {tier = nil, year = 1976, title = "War God"},
  {tier = "C", year = 2007, title = "Big Man Japan",
   blurb = "A man struggles to preserve his family business of growing giant to "
        .. "fight monsters. The jokes rarely land, but I enjoy the melancholic and "
        .. "frank look into the life of a professional hero."},

  -- Giantesses
  {tier = "C", year = 1958, title = "Attack of the 50 Foot Woman",
   blurb = "The OG giantess film! This movie has terrible special effects, and the "
        .. "story doesn't make a lot of sense, but it's kind-of endearing anyway."},
  {tier = "E", year = 1959, title = "The 30-Foot Bride of Candy Rock",
   blurb = "Lou Costello's performance lacks his signature high-energy goofery, "
        .. "and he clearly struggles playing the straight man. Other "
        .. "than that, it's a sexist and outdated movie about a man learning "
        .. "to control his wife."},
  {tier = "B", year = 1993, title = "Attack of the 50 Foot Woman",
   blurb = "Successfully utilizes the giantess as a symbol of female empowerment, "
        .. "but does get pretty preachy towards the end."},
  {tier = "C", year = 1995, title = "Attack of the 60 Foot Centerfold",
   blurb = "Occasionally tasteless, but endearingly shameless."},
  {tier = "D", year = 2012, title = "Attack of the 50 Foot Cheerleader",
   blurb = "Kind of cringe-y, but entertaining in places."},
  {tier = "F", year = 2022, title = "Attack of the 50 Foot Camgirl",
   blurb = "A soft-core porn parody that lacks both laughs and sex-appeal. The "
        .. "vile characters and horrible acting take the experience from boring "
        .. "to unpleasant."},
  {tier = "E", year = 2022, title = "Giantess Battle Attack",
   blurb = "Completely idiotic and immature, but it did manage to wring a few "
        .. "reluctant laughs out of me."},

  -- Dragons
  {tier = "D", year = 1963, title = "Atragon",
   blurb = "Suffers from one of the worst dubs I've ever heard."},
  {tier = "B", year = 1966, title = "The Magic Serpent",
   blurb = "Watching wizard-ninjas clash is a very simple sort of fun."},
  {tier = nil, year = 1982, title = "Q: The Winged Serpent"},
  {tier = nil, year = 1994, title = "Orochi, the Eight-Headed Dragon"},
  {tier = nil, year = 2007, title = "D-War"},
  {tier = nil, year = 2023, title = "Brush of the God"},

  -- Others
  {tier = nil, year = 1929, title = "The Mysterious Island"},
  {tier = nil, year = 1955, title = "Half Human"},
  {tier = "C", year = 1957, title = "The Monolith Monsters",
   blurb = "A mineral menaces a town. Creative premise, but quite conventional in "
        .. "execution."},
  {tier = nil, year = 1958, title = "The H-Man"},
  {tier = nil, year = 1959, title = "The Giant Gila Monster",
   tier = "E",
   blurb = "And the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh "
        .. "the lord said laugh children laugh"},
  {tier = nil, year = 1958, title = "The Strange World of Planet X"},
  {tier = "D", year = 1959, title = "Caltiki - The Immortal Monster",
   blurb = "The special effects work is quite impressive for a 1959 film from "
        .. "Italy, but it was clearly very low budget and mostly stuck to standard "
        .. "conventions of the genre."},
  {tier = nil, year = 1959, title = "The Angry Red Planet"},
  {tier = "A", year = 1961, title = "Mysterious Island",
   blurb = "As mysterious as advertised! Harryhousen's impeccable stop motion pairs "
        .. "perfectly with the gorgeous sets for some very impressive shots."},
  {tier = nil, year = 1962, title = "Gorath"},
  {tier = "C", year = 1965, title = "Frankenstein vs Baragon",
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
  {tier = "D", year = 1979, title = "Prophecy",
   blurb = "Ignoring the nonsense plot, the weak characters, and the questionable "
        .. "casting, Prophecy at least does an excellent job of establishing a tense "
        .. "atmosphere."},
  {tier = nil, year = 1981, title = "Clash of the Titans"},
  {tier = nil, year = 1985, title = "The Stuff"},
  {tier = "D", year = 1985, title = "Pulgasari",
   blurb = "The film clearly had substantial (ill-gotten) resources behind it, which "
        .. "it shows off with large-scale battles and impressive special-effects "
        .. "shots, but it grows tiresome quickly because of its limited plot."},
  {tier = nil, year = 1985, title = "War of the God Monsters"},
  {tier = nil, year = 1988, title = "Thunder Of Gigantic Serpent"},
  {tier = "A", year = 1990, title = "Tremors",
   blurb = "An action horror-comedy that succeeds in just about everything it sets "
        .. "out to do. Spoofs on various genre tropes without ever getting too self-"
        .. "referential."},
  {tier = "S", year = 1997, title = "Princess Mononoke",
   blurb = "Yes, this is a kaiju film (and a damn good one!). I will die on this hill."},
  {tier = nil, year = 2000, title = "Sakuya, The Slayer of Demons"},
  {tier = "C", year = 2004, title = "Monster Island",
   blurb = "The stop-motion and practical-effects monsters lend a real authenticity "
        .. "to this spoof of classic sci-fi."},
  {tier = nil, year = 2005, title = "The Great Yokai War"},
  {tier = nil, year = 2005, title = "Negadon: The Monster from Mars"},
  {tier = "A", year = 2006, title = "The Host",
   blurb = "Tense, disturbing, tragic, and with something to say (although it's "
        .. "not really clear what)."},
  {tier = nil, year = 2006, title = "Mammoth"},
  {tier = "A", year = 2006, title = "Monster House",
   blurb = "The titular house is honestly so dope"},
  {tier = "A", year = 2008, title = "Cloverfield",
   blurb = "A character-driven horror film with fantastic acting, cool monsters, "
        .. "and some genuine scares."},
  {tier = nil, year = 2008, title = "Monster"},
  {tier = nil, year = 2009, title = "Mighty Lady Sparkle"},
  {tier = nil, year = 2009, title = "Bakunyu Sentai Pairanger"},
  {tier = "D", year = 2009, title = "Monsters vs Aliens",
   blurb = "Immature, unfunny, but kinda cute, and the action doesn't suck."},
  {tier = "C", year = 2009, title = "Geharha: The Dark & Long Hair Monster",
   blurb = "An amusing short film that parodies Godzilla."},
  {tier = "S", year = 2010, title = "Trollhunter",
   blurb = "Original, human, and able to engender sympathy for the monsters without "
        .. "ever getting sappy."},
  {tier = nil, year = 2011, title = "Behemoth"},
  {tier = "B", year = 2012, title = "Grabbers",
   blurb = "A thoroughly entertaining horror-comedy, marred only by a romance subplot "
        .. "that feels forced."},
  {tier = "A", year = 2016, title = "Colossal",
   blurb = "Darker than I expected, and in different ways than I would have guessed, "
        .. "but beautifully cathartic."},
  {tier = nil, year = 2016, title = "A Monster Calls"},
  {tier = nil, year = 2017, title = "I Kill Giants"},
  {tier = nil, year = 2017, title = "The Ritual"},
  {tier = nil, year = 2017, title = "Boar"},
  {tier = nil, year = 2018, title = "Koujin"},
  {tier = "C", year = 2018, title = "Rampage",
   blurb = "It's a bit disappointing to see the goofy video game "
        .. "classic Rampage converted into such a by-the-numbers blockbuster, but "
        .. "I'd be lying if I said I didn't have fun."},
  {tier = "B", year = 2018, title = "Lake Michigan Monster",
   blurb = "Sincerely one of the weirdest films I've ever seen. Definitely has \"Youtube "
        .. "skit\" vibes, but it's hilarious and stylish enough to compensate."},
  {tier = nil, year = 2018, title = "The Great Buddha: Arrival"},
  {tier = nil, year = 2019, title = "It Wants Blood!"},
  {tier = nil, year = 2019, title = "Cencoroll Connect"},
  {tier = nil, year = 2019, title = "Notzilla"},
  {tier = nil, year = 2019, title = "Yagon the Water Monster"},
  {tier = nil, year = 2020, title = "The Great Beast of Shennong"},
  {tier = nil, year = 2020, title = "Nezura 1964"},
  {tier = "A", year = 2020, title = "Love and Monsters",
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
