class CitiesController < ApplicationController
  before_action :authenticate_user

  def show
    @cities = City.all
    @city = City.find(params[:id])
  end
end
