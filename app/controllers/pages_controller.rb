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
    @sponsors = Sponsor.all
    @sponsor_request = SponsorRequest.new
  end
end
