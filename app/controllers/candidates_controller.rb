class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find_by_id(params[:id])
  end

  def create
    liar = Candidate.new(race_id: params[:race_id], name: params[:name],
                         hometown_at: params[:hometown_at], party: params[:party],
                         district_at: params[:district_at])
    liar.save ? (render json: liar) : (render json: liar.errors)
  end

  def destroy
    candidate = Candidate.find_by_id(params[:id])
    if candidate
      candidate.destroy
      render json: "Candidate has been deleted! That'll teach him to not be corrupt."
    else
      render json: "No candidate found."
    end
  end

end
