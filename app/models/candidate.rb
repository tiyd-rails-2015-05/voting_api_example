class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true, uniqueness: true
  validates :hometown_at, presence: true
  validates :district_at, presence: true
  validates :party, presence: true
end
