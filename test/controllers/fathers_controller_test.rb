require 'test_helper'

class FathersControllerTest < ActionController::TestCase
  setup do
    @father = fathers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fathers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create father" do
    assert_difference('Father.count') do
      post :create, father: { birth_date: @father.birth_date, name: @father.name, occupation: @father.occupation }
    end

    assert_redirected_to father_path(assigns(:father))
  end

  test "should show father" do
    get :show, id: @father
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @father
    assert_response :success
  end

  test "should update father" do
    patch :update, id: @father, father: { birth_date: @father.birth_date, name: @father.name, occupation: @father.occupation }
    assert_redirected_to father_path(assigns(:father))
  end

  test "should destroy father" do
    assert_difference('Father.count', -1) do
      delete :destroy, id: @father
    end

    assert_redirected_to fathers_path
  end
end
