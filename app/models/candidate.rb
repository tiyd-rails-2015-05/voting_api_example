class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true, uniqueness: true
  validates :hometown_at, presence: true
  validates :district_at, presence: true
  validates :party, presence: true

  def number_of_votes
    @vote_count ||= votes.count
  end

  def self.most_votes
    sorted = all.sort_by &:number_of_votes
    sorted.last
  end

end
