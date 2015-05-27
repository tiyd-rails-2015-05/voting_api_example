require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    Candidate.new(race_id: 1, name: "Mr.Rothschild",
    hometown_at: "London", district_at: "Entire World", party: "NWO")
    get :show
    assert_response :success
  end

  test "should post create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end
end
