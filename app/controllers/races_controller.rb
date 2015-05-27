class RacesController < ApplicationController
  def create
    race = Race.new(name: params[:name])
    race.save ? (render json: race) : (render json: race.errors)
  end

  def show
    render json: Race.find_by_id(params[:id])
  end

  def index
    render json: Race.all
  end

  def destroy
    Race.delete(params[:id])
    render json: "The race no longer exists! Yay something different on the news."
  end
end
