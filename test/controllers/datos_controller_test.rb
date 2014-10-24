require 'test_helper'

class DatosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get proceso" do
    get :proceso
    assert_response :success
  end

  test "should get llenado" do
    get :llenado
    assert_response :success
  end

end
