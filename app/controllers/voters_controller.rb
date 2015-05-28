class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name],
                      party: params[:party])
    voter.save ? (render json: voter) : (render json: voter.errors)
  end

  def index
    render json: Voter.all
  end

  def show
    voter = Voter.find_by_id(params[:id])
    if voter.token == params[:token]
      render json: voter
    else
      render json: "invalid token"
    end
  end

  def destroy
    Voter.delete(params[:id])
    render json: "The voter has been deleted! poor guy, he knew too much."
  end
end
