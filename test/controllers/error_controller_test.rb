require 'test_helper'

class ErrorControllerTest < ActionController::TestCase
  test "should get rutas" do
    get :rutas
    assert_response :success
  end

end
