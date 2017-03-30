User.delete_all
puts "Deleted all the users"
Event.delete_all
puts "Deleted all events"

User.create!(email: "wouter@codaisseur.com", password: "testing", admin: true)
User.create!(email: "valentina@codaisseur.com", password: "testing", admin: true)
puts "Created new users"

Event.create!(title: "Shoot some balloons", location: "TQ Amsterdam", spaces_available: 50, image: "http://m.img.brothersoft.com/iphone/1827/464767827_screen0360x480.png", public: true, date: 5.days.from_now)
Event.create!(title: "Build a hangman", location: "TQ Amsterdam", spaces_available: 40, image: "https://www.codeproject.com/KB/game/Hangman_game/Hangman.jpg", public: true, date: 7.days.from_now)
puts "Created dummy events"
