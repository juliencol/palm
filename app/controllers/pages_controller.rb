class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @reservation = Reservation.new
    if params[:query].present?
      sql_query = " \
      islands.title @@ :query \
      OR islands.location @@ :query \
    "
      @islands = Island.joins(:location).where(sql_query, query: "%#{params[:query]}%")
    else
      @islands = Island.all
    end
  end
end
