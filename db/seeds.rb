User.delete_all
IncompanyRequest.delete_all
puts "Deleted all the users"
Event.delete_all
puts "Deleted all events"

User.create!(email: "wouter@codaisseur.com", password: "testing", admin: true)
User.create!(email: "valentina@codaisseur.com", password: "testing", admin: true)
puts "Created new users"


Event.create!(title: "Shoot some balloons", location: "TQ Amsterdam", spaces_available: 50, image: "http://m.img.brothersoft.com/iphone/1827/464767827_screen0360x480.png", public: true, date: 5.days.from_now)
Event.create!(title: "Build a hangman", location: "TQ Amsterdam", spaces_available: 40, image: "https://www.codeproject.com/KB/game/Hangman_game/Hangman.jpg", public: true, date: 7.days.from_now)
puts "Created dummy events"

incompanyrequest1 = IncompanyRequest.create!(
  {first_name: "Vanny",
  last_name: "Ho",
  company_name: "VHo's Company",
  email: "vho@mail.com",
  date: "2017-04-03T00:00:00+00:00",
  spaces_available: 50,
  comments: "Going to host an incompany event for all our employees named Vanessa :)",
  workshop_id: ""})

incompanyrequest2 = IncompanyRequest.create! (
  {first_name: "Somebody",
  last_name: "Something",
  company_name: "Something's Company",
  email: "something@mail.com",
  date: "2017-05-03T00:00:00+00:00",
  spaces_available: 80,
  comments: "Going to host an incompany event for all our employees named Something",
  workshop_id: ""})
