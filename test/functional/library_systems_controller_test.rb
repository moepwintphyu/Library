require 'test_helper'

class LibrarySystemsControllerTest < ActionController::TestCase
  setup do
    @library_system = library_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_system" do
    assert_difference('LibrarySystem.count') do
      post :create, library_system: { Content: @library_system.Content, File: @library_system.File, Image: @library_system.Image, Reference: @library_system.Reference, Tag: @library_system.Tag, Title: @library_system.Title }
    end

    assert_redirected_to library_system_path(assigns(:library_system))
  end

  test "should show library_system" do
    get :show, id: @library_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library_system
    assert_response :success
  end

  test "should update library_system" do
    put :update, id: @library_system, library_system: { Content: @library_system.Content, File: @library_system.File, Image: @library_system.Image, Reference: @library_system.Reference, Tag: @library_system.Tag, Title: @library_system.Title }
    assert_redirected_to library_system_path(assigns(:library_system))
  end

  test "should destroy library_system" do
    assert_difference('LibrarySystem.count', -1) do
      delete :destroy, id: @library_system
    end

    assert_redirected_to library_systems_path
  end
end
