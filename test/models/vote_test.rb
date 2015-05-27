require 'test_helper'

class VoteTest < ActiveSupport::TestCase

  test "vote exists and needs parameters" do
    vote = Vote.new
    refute vote.save
  end

  test "votes build correctly and must have all parameters"
    vote_one = Vote.new(race_id: 1, candidate_id: 1, voter_id: 1)
    vote_two = Vote.new(candidate_id: 1)
    assert vote_one.save
    refute vote_two.save
    assert_equal 1, vote_one.candidate_id
  end
end
