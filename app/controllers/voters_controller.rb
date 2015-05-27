class VotersController < ApplicationController
  def create
    voter = Voter.new(token: params[:token], name: params[:name],
                      party: params[:party])
    voter.save ? (render json: voter) : (render json: voter.errors)
  end

  def index
    render json: Voter.all
  end

  def show
    render json: Voter.find_by_id(params[:id])
  end

  def destroy
    Voter.delete(params[:id])
    render json: "The voter has been deleted! poor guy, he knew too much."
  end
end
