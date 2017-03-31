class PagesController < ApplicationController
  def homepage;end
  def attend
    @sponsors = Sponsor.all
    @events = Event.all
  end


  def incompany
    @sponsors = Sponsor.all
  end

  def sponsor
    @sponsor_request = SponsorRequest.new
  end
end
