class NewsletterController < ApplicationController

  def subscribe
    list_id = ENV['MAILCHIMP_LIST_ID']
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    begin
      if gibbon.lists(list_id).members.create(body: { email_address: params[:email][:address], status: "subscribed" })
        redirect_to attend_path, notice: "Succesfully subscribed"
      end
    rescue Gibbon::MailChimpError => e
      redirect_to attend_path, alert: "Something went wrong... #{e.title}"
    end
  end
end
