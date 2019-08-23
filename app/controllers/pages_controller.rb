class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @islands = Island.all
    @islands = Island.geocoded #returns flats with coordinates
    @markers = @islands.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude
      }
    end
  end
end
