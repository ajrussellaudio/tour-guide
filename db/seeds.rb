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
  }
])
