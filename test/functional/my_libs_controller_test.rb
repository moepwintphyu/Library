require 'test_helper'

class MyLibsControllerTest < ActionController::TestCase
  setup do
    @my_lib = my_libs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_libs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_lib" do
    assert_difference('MyLib.count') do
      post :create, my_lib: { Content: @my_lib.Content, File: @my_lib.File, Image: @my_lib.Image, Reference: @my_lib.Reference, Tag: @my_lib.Tag, Title: @my_lib.Title }
    end

    assert_redirected_to my_lib_path(assigns(:my_lib))
  end

  test "should show my_lib" do
    get :show, id: @my_lib
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_lib
    assert_response :success
  end

  test "should update my_lib" do
    put :update, id: @my_lib, my_lib: { Content: @my_lib.Content, File: @my_lib.File, Image: @my_lib.Image, Reference: @my_lib.Reference, Tag: @my_lib.Tag, Title: @my_lib.Title }
    assert_redirected_to my_lib_path(assigns(:my_lib))
  end

  test "should destroy my_lib" do
    assert_difference('MyLib.count', -1) do
      delete :destroy, id: @my_lib
    end

    assert_redirected_to my_libs_path
  end
end
