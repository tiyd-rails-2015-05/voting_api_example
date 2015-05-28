require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: candidates(:kay).id
    assert_response :success
  end

  test "should post create" do
    post :create
    assert_response :success
  end

  test "should fail to destroy" do
    delete :destroy
    assert response.body =~ /No candidate found/
  end

  test "should destroy" do
    delete :destroy, id: candidates(:bob).id
    assert response.body =~ /corrupt/
  end
end
