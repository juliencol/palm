class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @islands = Island.all
  end
end
