require 'test_helper'

class ArrestsControllerTest < ActionController::TestCase
  setup do
    @arrest = arrests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arrests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arrest" do
    assert_difference('Arrest.count') do
      post :create, arrest: { arresting_officer: @arrest.arresting_officer, client_id: @arrest.client_id, offense: @arrest.offense }
    end

    assert_redirected_to arrest_path(assigns(:arrest))
  end

  test "should show arrest" do
    get :show, id: @arrest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arrest
    assert_response :success
  end

  test "should update arrest" do
    put :update, id: @arrest, arrest: { arresting_officer: @arrest.arresting_officer, client_id: @arrest.client_id, offense: @arrest.offense }
    assert_redirected_to arrest_path(assigns(:arrest))
  end

  test "should destroy arrest" do
    assert_difference('Arrest.count', -1) do
      delete :destroy, id: @arrest
    end

    assert_redirected_to arrests_path
  end
end
