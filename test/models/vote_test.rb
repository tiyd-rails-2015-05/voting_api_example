require 'test_helper'

class VoteTest < ActiveSupport::TestCase

  test "vote exists and needs parameters" do
    vote = Vote.new
    refute vote.save
  end

  test "votes build correctly and must have all parameters" do
    vote_one = Vote.new(race_id: 1, candidate_id: 3, voter_id: 2)
    vote_two = Vote.new(candidate_id: 1)
    assert vote_one.save
    assert_raises(ActiveRecord::RecordInvalid) do
      vote_two.save!
    end
    assert_equal 3, vote_one.candidate_id
  end
end
