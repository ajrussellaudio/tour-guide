Point.delete_all
Tour.delete_all

tour = Tour.new({
  name: "Edinburgh to Glasgow",
  info: "A wee trip from the country's capital to its finest city."
})
tour.save

Point.create([
  {
    name: "Edinburgh",
    image_url: "http://edinburgh.org/media/743198/Cityscape.jpg",
    info: "Scotland's capital. It's alright, I guess.",
    latitude: 55.95206,
    longitude: -3.19648,
    tour: tour
  }, {
    name: "Falkirk",
    image_url: "https://www.thebimblers.com/wp-content/uploads/2017/01/The-Kelpies-Water-Horses.jpg",
    info: "Home of the Kelpies, and not much else.",
    latitude: 55.9991,
    longitude: -3.8345,
    tour: tour
  }, {
    name: "Glasgow",
    image_url: "https://peoplemakeglasgow.com/images/Clydeside1.jpg",
    info: "Dear green place. Second city of the Empire. The Big G. G-town. Home.",
    latitude: 55.86515,
    longitude: -4.25763,
    tour: tour
  }
])
