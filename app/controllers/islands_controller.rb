class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
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

  private

  def set_params
    params.require(:island).permit(:name, :location, :description, :booked, :photo)
  end
end
