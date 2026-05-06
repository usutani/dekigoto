class HomeController < ApplicationController
  def index
    @events = Event.order(:starts_at)
  end
end
