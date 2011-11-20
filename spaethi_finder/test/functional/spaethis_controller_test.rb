require 'test_helper'

class SpaethisControllerTest < ActionController::TestCase
  setup do
    @spaethi = spaethis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaethis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spaethi" do
    assert_difference('Spaethi.count') do
      post :create, spaethi: @spaethi.attributes
    end

    assert_redirected_to spaethi_path(assigns(:spaethi))
  end

  test "should show spaethi" do
    get :show, id: @spaethi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spaethi.to_param
    assert_response :success
  end

  test "should update spaethi" do
    put :update, id: @spaethi.to_param, spaethi: @spaethi.attributes
    assert_redirected_to spaethi_path(assigns(:spaethi))
  end

  test "should destroy spaethi" do
    assert_difference('Spaethi.count', -1) do
      delete :destroy, id: @spaethi.to_param
    end

    assert_redirected_to spaethis_path
  end
end
