require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "candidate exists and needs parameters" do
    candidate =  Candidate.new
    refute candidate.save
  end

  test "candidates build cirrectly and must have all parameters" do
    candidate_one = Candidate.new(race_id: 1, name: "Mr.Rothschild",
    hometown_at: "London", district_at: "Entire World", party: "NWO")
    candidate_two = Candidate.new(name: "Measly Peasant", party: "Freedom Fighter")
    assert candidate_one.save
    refute candidate_two.save
    assert_equal "NWO", candidate_one.party
  end

end
