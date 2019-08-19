class IslandsController < ApplicationController
  def show
    @island = Island.find(params[:id])
  end
end
