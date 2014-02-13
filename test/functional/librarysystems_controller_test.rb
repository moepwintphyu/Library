require 'test_helper'

class LibrarysystemsControllerTest < ActionController::TestCase
  setup do
    @librarysystem = librarysystems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:librarysystems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create librarysystem" do
    assert_difference('Librarysystem.count') do
      post :create, librarysystem: { Content: @librarysystem.Content, File: @librarysystem.File, Image: @librarysystem.Image, Reference: @librarysystem.Reference, Tag: @librarysystem.Tag, Title: @librarysystem.Title }
    end

    assert_redirected_to librarysystem_path(assigns(:librarysystem))
  end

  test "should show librarysystem" do
    get :show, id: @librarysystem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @librarysystem
    assert_response :success
  end

  test "should update librarysystem" do
    put :update, id: @librarysystem, librarysystem: { Content: @librarysystem.Content, File: @librarysystem.File, Image: @librarysystem.Image, Reference: @librarysystem.Reference, Tag: @librarysystem.Tag, Title: @librarysystem.Title }
    assert_redirected_to librarysystem_path(assigns(:librarysystem))
  end

  test "should destroy librarysystem" do
    assert_difference('Librarysystem.count', -1) do
      delete :destroy, id: @librarysystem
    end

    assert_redirected_to librarysystems_path
  end
end
