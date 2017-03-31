class PagesController < ApplicationController
  def homepage;end
  def attend;end
  def incompany
    @workshops = Workshop.all
  end
  def sponsor;end
end
