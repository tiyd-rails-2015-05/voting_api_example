index - list everything
show - show one candidate id
class CandidatesController < ApplicationController
  def create
    candidate = Candidate.new(name: params[:name], party: params[:party])
    if candidate.save
      render json: candidate
    else
      render json: "You failed."   #candidate.errors
    end
  end

  def index
    render json: Candidate.all.to_json
  end

  def show
    render json: Candidate.find_by_id(params[:id])
end
