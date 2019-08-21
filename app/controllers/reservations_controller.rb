class ReservationsController < ApplicationController

def index
  @user = current_user
  @reservations = Reservation.all
end

  def show
    @reservation = Reservation.find(params[:id])
  end

def new
  @reservation = Reservation.new
  @island = Island.find(params[:island_id])
  @reservation.island = @island
end

def create
  @reservation = Reservation.new(params_reservation)
  @reservation.user = current_user
  @reservation.island = Island.find(params[:island_id])

  if @reservation.save
    redirect_to reservation_path(@reservation)
  else
    render :new
  end
end

private
  def params_reservation
    params.require(:reservation).permit(:starting_date, :ending_date, :island_id, :user_id)
  end
end

