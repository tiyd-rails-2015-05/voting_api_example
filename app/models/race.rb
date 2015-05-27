class Race < ActiveRecord::Base
  has_many :candidates
  has_many :votes
end
