User.delete_all
puts "Deleted all the users"

User.create!(email: "wouter@codaisseur.com", password: "testing", admin: true)
User.create!(email: "valentina@codaisseur.com", password: "testing", admin: true)
puts "Created new users"

Sponsor.create!(company_name: "A Business", logo: "https://image.freepik.com/free-vector/blue-company-logo_1057-513.jpg")
Sponsor.create!(company_name: "Vision 360", logo: "https://smallbusinesslogos.files.wordpress.com/2012/02/company_logo_for_vision-360_hi-res.jpg")
Sponsor.create!(company_name: "One World", logo: "http://farm4.static.flickr.com/3254/3322981237_7e723b609e.jpg")
Sponsor.create!(company_name: "eTech", logo: "http://www.vectorea.com/tvx_uploads/5/1043-modern-etech-company-logo.jpg")
Sponsor.create!(company_name: "Oracon", logo: "https://www.logogarden.com/wp-content/uploads/lg-logo-samples/Construction-Handyman-Logo-2.png")
Sponsor.create!(company_name: "Dell", logo: "http://brandongaille.com/wp-content/uploads/2013/07/Dell-Company-Logo.jpg")
Sponsor.create!(company_name: "Shouldn't be with the first 6", logo: "https://i.ytimg.com/vi/VXF_v414FaU/maxresdefault.jpg")
