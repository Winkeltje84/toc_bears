class NewsletterController < ApplicationController

  def subscribe
    gibbon = Gibbon::Request.new(api_key: "65d0faf4bd22c091ddec5b75c2660b92-us9")
    gibbon.lists("d08a5502a8").members.create(body: { email_address: "foo@bar.com", status: "subscribed" })
  end
end
