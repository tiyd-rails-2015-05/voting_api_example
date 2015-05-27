class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  belongs_to :race
  validates :race_id, presence: true
  validates :candidate_id, presence: true
  validates :voter_id, presence: true, uniqueness: {scope: :race_id}
end
