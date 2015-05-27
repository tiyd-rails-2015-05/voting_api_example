class VotesController < ApplicationController
  def create
    vote = Vote.new(race_id: params[:race_id], voter_id: params[:voter_id],
                    candidate_id: params[:candidate_id])
    vote.save ? (render json: vote) : (render json: vote.errors)
  end

  def index
    render json: Vote.all
  end

  def destroy
    Vote.delete(params[:id])
    render json: "Vote no longer exists! Dont worry it didnt count anyway."
  end
end
