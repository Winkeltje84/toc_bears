User.delete_all
puts "Deleted all the users"
Event.delete_all
puts "Deleted all events"
IncompanyRequest.delete_all
puts "Deleted all the incompany requests"
Workshop.delete_all
puts "Delete all workshops"
Sponsor.delete_all
puts "Deleted all the sponsors"

User.create!(email: "wouter@codaisseur.com", password: "testing", admin: true)
User.create!(email: "valentina@codaisseur.com", password: "testing", admin: true)
puts "Created new users"

sponsor1 = Sponsor.create!(company_name: "ABN", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/abnamro.png?raw=true")
sponsor2 = Sponsor.create!(company_name: "Codaisseur", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/codaisseur.png?raw=true")
sponsor3 = Sponsor.create!(company_name: "Comptoir", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/comptoir.png?raw=true")
sponsor4 = Sponsor.create!(company_name: "JPMorgan", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/jpmorgan.png?raw=true")
sponsor5 = Sponsor.create!(company_name: "KPN", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/kpn.png?raw=true")
sponsor6 = Sponsor.create!(company_name: "NOS", logo: "https://github.com/Codaisseur/taste-of-code-website/blob/master/images/sponsors/nos.png?raw=true")
puts "Created new sponsors"

Workshop.create!(title:"Picnic in the woods", description:"If you go down to the woods today...bears will eat you.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Brown_bear_%28Ursus_arctos_arctos%29_running.jpg/319px-Brown_bear_%28Ursus_arctos_arctos%29_running.jpg", demo_link:"https://github.com/Winkeltje84/toc_bears", github_link:"https://github.com/leefreemanxyz/codaisseurify")
Workshop.create!(title:"Steal a family's porridge", description:"Little Red Riding Hood is very particular about the temperature of her porridge. There is no way that breaking into a family of bears' house and tasting their porridge can go badly, right?", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Porridge.jpg/504px-Porridge.jpg", demo_link:"https://github.com/Winkeltje84/toc_bears", github_link:"https://github.com/leefreemanxyz/codaisseurify")
puts "created two workshops"

Event.create!(title: "Shoot some balloons", location: "TQ Amsterdam", spaces_available: 50, image: "http://m.img.brothersoft.com/iphone/1827/464767827_screen0360x480.png", public: true, date: 5.days.from_now, nvite_id: "eoed2l")
Event.create!(title: "Build a hangman", location: "TQ Amsterdam", spaces_available: 40, image: "https://www.codeproject.com/KB/game/Hangman_game/Hangman.jpg", public: true, date: 7.days.from_now, nvite_id: "eoed2l")
Event.create!(title: "Tic-Tac-Toe", location: "TQ Amsterdam", spaces_available: 40, image: "https://www.codeproject.com/KB/game/Hangman_game/Hangman.jpg", public: true, date: 10.days.from_now, nvite_id: "eoed2l")

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
puts "Created the incompany request"
