class PagesController < ApplicationController
  def homepage;end

  def attend
    @sponsors = Sponsor.all
  end

  def incompany;end
  def sponsor;end
end
