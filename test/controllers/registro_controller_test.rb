require 'test_helper'

class RegistroControllerTest < ActionController::TestCase
  test "should get formulario" do
    get :formulario
    assert_response :success
  end

end
