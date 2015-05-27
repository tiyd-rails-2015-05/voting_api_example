require 'test_helper'

class VoterTest < ActiveSupport::TestCase

  test "voters exist and need parameters" do
    voter =  Voter.new
    refute voter.save
  end

  test "voters build correctly and must have all parameters" do
    voter_one = Voter.new(name: "Bobby Jenkins", party: "NWO")
    voter_two = Voter.new(party: "Freedom Fighter")
    assert voter_one.save
    assert_raises(ActiveRecord::RecordInvalid) do
     voter_two.save!
    end
    assert_equal "NWO", voter_one.party
  end

end
