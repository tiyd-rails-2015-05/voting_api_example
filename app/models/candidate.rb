class Candidate < ActiveRecord::Base
  belongs_to :race
  has_many :votes
  validates :race_id, presence: true
  validates :name, presence: true, uniqueness: true
  validates :hometown_at, presence: true
  validates :district_at, presence: true
  validates :party, presence: true
end
