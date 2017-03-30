User.delete_all
puts "Deleted all the users"

Workshop.delete_all
puts "Delete all workshops"

User.create!(email: "wouter@codaisseur.com", password: "testing", admin: true)
User.create!(email: "valentina@codaisseur.com", password: "testing", admin: true)
puts "Created new users"

Workshop.create!(title:"Picnic in the woods", description:"If you go down to the woods today...bears will eat you.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Brown_bear_%28Ursus_arctos_arctos%29_running.jpg/319px-Brown_bear_%28Ursus_arctos_arctos%29_running.jpg", demo_link:"https://github.com/Winkeltje84/toc_bears", github_link:"https://github.com/leefreemanxyz/codaisseurify")
Workshop.create!(title:"Steal a family's porridge", description:"Little Red Riding Hood is very particular about the temperature of her porridge. There is no way that breaking into a family of bears' house and tasting their porridge can go badly, right?", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Porridge.jpg/504px-Porridge.jpg", demo_link:"https://github.com/Winkeltje84/toc_bears", github_link:"https://github.com/leefreemanxyz/codaisseurify")
puts "created two workshops"
