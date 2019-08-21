class ReservationsController < ApplicationController

def index
  @user = current_user
  @reservations = Reservation.all
end

  def show
    @reservation = Reservation.find(params[:id])
  end

def new
  @island = Island.find(params[:island_id])
  @reservation = Reservation.new
end

def create
  raise
  @reservation = Reservation.new(params_reservation)
  @island = Island.find(params[:island_id])
  @reservation.island = @island
  @reservation.user = current_user
  if @reservation.save
    redirect_to island_path(@island)
  else
    render :new
  end
end

private
  def params_reservation
    params.require(:reservation).permit(:starting_date, :ending_date)
  end
end

