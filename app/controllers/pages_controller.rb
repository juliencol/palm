class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query].present?
      @islands = Island.where(name: params[:query])
    elsif
      @islands = Island.geocoded #returns flats with coordinates
      @markers = @islands.map do |island|
        {
          lat: island.latitude,
          lng: island.longitude
        }
      end
    else
      @islands = Island.all
    end
  end
end
