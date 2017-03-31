class PagesController < ApplicationController
  def homepage;end
  def attend;end
  def incompany;end
  def sponsor
    @sponsor_request = SponsorRequest.new
  end
end
