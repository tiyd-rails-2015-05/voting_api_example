class Voter < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true, uniqueness: true
  validates :party, presence: true

  before_save :set_token

  def set_token
    self.token ||= SecureRandom.hex
  end
end
