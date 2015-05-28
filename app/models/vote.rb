class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  validates :candidate_id, presence: true
  validates :voter_id, presence: true, uniqueness: true
end
