class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.find_by_id(params[:id])
  end

  def create
    liar = Candidate.new(race_id: params[:race_id], name: params[:name],
                         hometown_at: params[:hometown_at], party: params[:party],
                         district_at: params[:district_at])
    liar.save ? (render json: liar) : (render json: liar.errors)
  end

  def destroy
    Candidate.delete(params[:id])
    render json: "Candidate has been deleted! That'll teach him to not be corrupt."
  end

end
