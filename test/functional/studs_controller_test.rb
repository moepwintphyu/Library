require 'test_helper'

class StudsControllerTest < ActionController::TestCase
  setup do
    @stud = studs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud" do
    assert_difference('Stud.count') do
      post :create, stud: { age: @stud.age, name: @stud.name }
    end

    assert_redirected_to stud_path(assigns(:stud))
  end

  test "should show stud" do
    get :show, id: @stud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud
    assert_response :success
  end

  test "should update stud" do
    put :update, id: @stud, stud: { age: @stud.age, name: @stud.name }
    assert_redirected_to stud_path(assigns(:stud))
  end

  test "should destroy stud" do
    assert_difference('Stud.count', -1) do
      delete :destroy, id: @stud
    end

    assert_redirected_to studs_path
  end
end
