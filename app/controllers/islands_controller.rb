class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @island = Island.find(params[:id])
    @marker =
      {
        lat: @island.latitude,
        lng: @island.longitude
      }
    @reservation = Reservation.new
    @total_price = "trust me you don't want to know"
    if @reservation.updated_at != nil && @reservation.created_at != nil
      @number_of_nights = @reservation.updated_at - @reservation.created_at
    end

  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(set_params)
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(set_params)
    redirect_to islands_path
  end

  def destroy
  @island = Island.find(params[:id])
  @island.destroy
  redirect_to reservations_path
end


  private

  def set_params
    params.require(:island).permit(:name, :location, :description, :booked, :photo, :phototwo, :photothree, :price_by_night)
  end
end
