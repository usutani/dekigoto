class HomeController < ApplicationController
  def index
    @events = Event.order(:started_at)
  end
end
