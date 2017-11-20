Point.delete_all
Tour.delete_all

edinGla = Tour.new({
  name: "Edinburgh to Glasgow",
  info: "A wee trip from the country's capital to its finest city."
})
edinGla.save

Point.create([
  {
    name: "Edinburgh",
    image_url: "http://edinburgh.org/media/743198/Cityscape.jpg",
    info: "Scotland's capital. It's alright, I guess.",
    latitude: 55.95206,
    longitude: -3.19648,
    tour: edinGla
  }, {
    name: "Falkirk",
    info: "Home of the Kelpies, and not much else.",
    latitude: 55.9991,
    longitude: -3.8345,
    tour: edinGla
  }, {
    name: "Glasgow",
    image_url: "https://peoplemakeglasgow.com/images/Clydeside1.jpg",
    info: "Dear green place. Second city of the Empire. The Big G. G-town. Home.",
    latitude: 55.86515,
    longitude: -4.25763,
    tour: edinGla
  }
])

glasgowMurals = Tour.new({
  name: "Glasgow Mural Trail",
  info: "In 2014, the City Centre Mural Trail was officially launched to promote the growing portfolio of works adorning buildings within Glasgow City Centre.\n\nThe murals showcase a diverse range of talent and styles and are now recognised as unique pieces of art in their own right.\n\nThey have generated hugely positive public and business feedback while creating striking area features that enhance the city centre environment."
})
glasgowMurals.save

Point.create([
  {
    name: "Hip-Hop Marionettes",
    street: "John Street",
    info: "Working with Art Pistol, Rogue-One has added to his existing portfolio of murals with another quirky installation here on John Street.\n\nRogue described his inspiration: \"We thought that an interesting concept would be to have body-poppers or break-dancers in puppet form. I took my influence from a Beastie Boys cover and a Run DMC picture.\"",
    latitude: 55.861580,
    longitude: -4.247483,
    tour: glasgowMurals
  }, {
    name: "Strathclyde University",
    street: "George Street",
    info: "The “Wonderwall” celebrates the people of the University of Strathclyde and their many significant achievements. Almost 200 metres long from start to finish and incorporating three 7-storey gables, the project was completed by Art Pistol with Rogue-One and Ejek.\n\nWe also see the Dansken equatorial telescope featured, which was once used to teach nautical astronomy. And the Land-Ship was a mock up navigation bridge on the roof of the School of Navigation in the Royal College, used to teach the principles of compass adjustment.",
    latitude: 55.860531,
    longitude: -4.241007,
    tour: glasgowMurals
  }, {
    name: "St. Mungo",
    street: "High Street",
    info: "Another addition by Smug to his growing portfolio of work, this mural was completed in February 2016.\n\nAlthough officially untitled, it acquired its name during a period of massive social media interest when an image of this installation was shared approximately 1.5 million times within the first week.",
    latitude: 55.860894,
    longitude: -4.238424,
    tour: glasgowMurals
  }, {
    name: "Fellow Glasgow Residents",
    street: "Ingram Street",
    info: "Before the gable end wall overlooking Ingram Street car park featured peeling paint and graffiti. Now thanks to the imagination of Smug it shows all types of animals found in Glasgow’s parks and green space appearing through what looks like holes in the wall.\n\nWill you view everything present in one visit?\n\nWe don’t think so!",
    latitude: 55.859094,
    longitude: -4.244556,
    tour: glasgowMurals
  }, {
    name: "Badminton",
    street: "Wilson Street",
    info: "Installed as part of the promotional campaign for 2014 Commonwealth Games, this mural is part of a series depicting various sports. Completed by the same artist, the other murals were installed adjacent to Partick Train Station and represent hockey, netball and rugby.\n\nThe Badminton mural includes action shots of Scotland player Kieran Merrilees and conveys the speed of the game, as well as the athleticism required to succeed in such a competitive sport.",
    latitude: 55.858386,
    longitude: -4.246832,
    tour: glasgowMurals
  }, {
    name: "Spaceman",
    street: "New Wynd",
    info: "This installation by Recoat and Ali Wylie brings colour to a city centre lane.\n\nIt has been informed by Pop, graphic novels, graphic design, and Japanese culture which you can see in the slick clean lines, colour choice and geometric patterned backgrounds.",
    latitude: 55.857084,
    longitude: -4.247135,
    tour: glasgowMurals
  }, {
    name: "Billy Connolly",
    street: "Osbourne Street",
    info: "In commemoration of Billy Connolly’s 75th birthday BBC Scotland commissioned three portraits of the comedian by top Scottish artists. In conjunction with Glasgow City Council representations of these original works were then installed around the city centre. Two of these works have been depicted as murals by Rogue One. This particular installation is based on John Byrne’s “Billy Connolly”. All three portraits were showcased, across the country, in a special BBC Scotland programme Billy Connolly: Portrait of a Lifetime and are now on display in the People’s Palace.",
    latitude: 55.856391,
    longitude: -4.248781,
    tour: glasgowMurals
  }, {
    name: "Study of a Woman in Black",
    street: "Bridgegate",
    info: "Now working under his own name, James Klinge (aka “Klingatron”) continues his collaboration with Art Pistol whilst demonstrating the same attention to detail through his distinctive use of intricate stencil technique. However, the artist has chosen to progress his subject matter towards portraiture, a trend which has been showcased in a number of exhibitions around the world.",
    latitude: 55.854858,
    longitude: -4.245849,
    tour: glasgowMurals
  }, {
    name: "The Clutha",
    street: "Gorbals Street / Stockwell Street",
    info: "Rogue-One, Art Pistol and Ejek have skilfully combined to create a mural which pays homage to the history of the area, as well as celebrating a variety of personalities who visited this iconic location, famous for its atmosphere and live music.\n\nThe landlord, Alan Crossan, said: \"The mural installed at the Clutha Bar in Glasgow has created worldwide interest and is fast becoming a tourist attraction. It will without doubt enhance the local area, brightening up an otherwise derelict building.\"",
    latitude: 55.854399,
    longitude: -4.250208,
    tour: glasgowMurals
  }, {
    name: "Glasgow's Tiger",
    street: "Custom House Quay",
    info: "Klingatron has collaborated with Art Pistol to re-imagine the original tiger design previously installed at this location. Incorporating a high level of detail, and occupying the same high profile location adjacent to South Portland Suspension Bridge, this mural is becoming as iconic as its predecessor.",
    latitude: 55.855741,
    longitude: -4.255586,
    tour: glasgowMurals
  }, {
    name: "Dr Connolly I Presume?",
    street: "Dixon Street",
    info: "This is the second of the two commemorative Billy Connolly murals installed by Rogue One. It is a reproduction of the Jack Vettriano painting from the comedian’s World Tour of Scotland series in 1994 titled “Dr Connolly I Presume” and features a windblown Billy on a storm-lashed coast near John O’Groats. A reproduction of the third portrait commissioned by BBC Scotland as part of the project, a Rachel Maclean digital print of Billy in a specially created outfit, has been installed in the Gallowgate via a vinyl transfer",
    latitude: 55.856599,
    longitude: -4.255453,
    tour: glasgowMurals
  }, {
    name: "The World's Most Economical Taxi",
    street: "Mitchell Street",
    info: "Do taxis float in Glasgow?\n\nThe attention to detail by artist Rogue-One in this mural makes it a must-visit location.\n\nAs the Artist said: \"Can’t believe I painted a wall to look like a brick wall just because I wanted a brick wall!\"",
    latitude: 55.858548,
    longitude: -4.255908,
    tour: glasgowMurals
  }, {
    name: "Honey... I Shrunk the Kids",
    street: "Mitchell Street",
    info: "A huge piece of photo-realistic street art decorates the gable end of a building on Mitchell Street just off Argyle Street. The colossal image, by artist Smug (Sam Bates), depicts a girl with a magnifying glass who appears to be picking up an object off the street",
    latitude: 55.858989,
    longitude: -4.256018,
    tour: glasgowMurals
  }, {
    name: "Wind Power",
    street: "Mitchell Street",
    info: "Another imaginative image from Rogue-One and Art Pistol, this mural was originally conceived as a live installation as part of the Doors Open Day 2014 event and celebrates the diversity of sustainable energy production within the Glasgow area and Scotland nationally.",
    latitude: 55.859751,
    longitude: -4.255832,
    tour: glasgowMurals
  }, {
    name: "Glasgow's Panda",
    street: "Gordon Lane",
    info: "Glasgow’s very own Panda by Klingatron at home in Gordon Lane. This Giant Panda is at home in one of the city’s most interesting lanes, beside the bamboo gates of Gordon Lane.",
    latitude: 55.859792,
    longitude: -4.254938,
    tour: glasgowMurals
  }, {
    name: "Argyle Street Cafe",
    street: "Argyle Street",
    info: "A refreshed site, Smug’s reinterpretation of his previous installation is a fantastic twist to surprise the viewer.\n\nAs Smug described: \"I just didn’t want to do the exact same piece, I didn’t want to just touch it up and make it look prettier; didn’t want to redo it and make it look a little bit better. So I decided just to give it a complete new revamp.\"",
    latitude: 55.857883,
    longitude: -4.251540,
    tour: glasgowMurals
  }, {
    name: "The Gallery",
    street: "Argyle Street",
    info: "The boarded-up exterior of a former store on Argyle Street now features interpretations by Smug (Sam Bates) of famous paintings. Van Gogh’s Starry Night, Munch’s The Scream, Dali’s melting clocks and Picasso’s Les Demoiselles d’Avignon are all on display. His depiction of Da Vinci’s Mona Lisa has already been dubbed “The Mona Lassie” by Glaswegians. It features a woman holding a can of Irn-Bru in front of a background of the Clyde Auditorium and Titan Crane.",
    latitude: 55.858769,
    longitude: -4.262434,
    tour: glasgowMurals
  }, {
    name: "The Swimmer",
    street: "Kingston Bridge / Anderston Quay",
    info: "One of the first murals to have been painted by Smug, this installation celebrates Glasgow’s 2014 Commonwealth Games.\n\nAt the Kingston Bridge, a concrete wall is emblazoned with huge Commonwealth swimmers greeting drivers waiting at the traffic lights, created by Smug (Sam Bates).\n\nA must see.",
    latitude: 55.856629,
    longitude: -4.270063,
    tour: glasgowMurals
  }, {
    name: "Crocodile Glesga",
    street: "Charing Cross Pedestrian Bridge",
    info: "Utilising the same hyper-realistic graphical approach for which he is becoming famous, Klingatron has added to his growing menagerie with this Art Pistol collaboration.\n\nThe image is designed to work with the environment using a gap in the bricks for the eye slit, and areas of old brickwork amongst the scales. Like a giant crocodile hunting the concrete jungle, the full scale of this animal is only realised from a certain angle, and this wrap around corner effect was the main reason for choosing the cunning beast.",
    latitude: 55.866995,
    longitude: -4.271763,
    tour: glasgowMurals
  }, {
    name: "Charing Cross Birds",
    street: "Charing Cross Pedestrian Bridge",
    info: "Art Pistol and Little Book Transfers found the perfect location to continue LBT’s ‘STALK’ series depicting birds, foliage and fruit together.\n\nThe graphic style and detailed illustration provides something a little different for Glasgow’s walls.",
    latitude: 55.867087,
    longitude: -4.270617,
    tour: glasgowMurals
  }, {
    name: "Hand Shadow Puppets",
    street: "Cowcaddens Underpass",
    info: "Let’s assume that hand shadow puppetry, known to specialists as shadowgraphy or ombromanie, began with the caveman. Just assume. We were looking for something with a bit of wow factor to brighten up what was becoming an increasingly dingy, although very well used underpass. The concept was born, like a shadow from a flame, and off went Mr Rogue with the idea, a camera and a will to harass those he met into doing exactly that.\n\n\"Here, hold your hands up like this and make them look like a squirrel... no, straighten the pinky, I need bigger ears.\"",
    latitude: 55.868286,
    longitude: -4.260050,
    tour: glasgowMurals
  }, {
    name: "The Musician",
    street: "Sauchiehall Lane",
    info: "Another Rogue-One collaboration with Art Pistol, drawing upon the influences of the local live music scene, and helping add some colour and creativity to the city’s resurgent lanes.",
    latitude: 55.864406,
    longitude: -4.257792,
    tour: glasgowMurals
  }
])
