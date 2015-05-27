require 'test_helper'

class RaceTest < ActiveSupport::TestCase

  test "race exists and needs parameters" do
    race =  Race.new
    refute race.save
  end

  test "race builds correctly and must have all parameters" do
    race_one = Race.new(name: "skull&bones Headmaster inagurals")
    assert race_one.save
    assert_equal "skull&bones Headmaster inagurals", race_one.name
  end

end
