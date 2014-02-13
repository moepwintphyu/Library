require 'test_helper'

class MyBookStroesControllerTest < ActionController::TestCase
  setup do
    @my_book_stro = my_book_stroes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_book_stroes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_book_stro" do
    assert_difference('MyBookStroe.count') do
      post :create, my_book_stro: { Content: @my_book_stro.Content, File: @my_book_stro.File, Image: @my_book_stro.Image, Reference: @my_book_stro.Reference, Tag: @my_book_stro.Tag, Title: @my_book_stro.Title }
    end

    assert_redirected_to my_book_stro_path(assigns(:my_book_stro))
  end

  test "should show my_book_stro" do
    get :show, id: @my_book_stro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_book_stro
    assert_response :success
  end

  test "should update my_book_stro" do
    put :update, id: @my_book_stro, my_book_stro: { Content: @my_book_stro.Content, File: @my_book_stro.File, Image: @my_book_stro.Image, Reference: @my_book_stro.Reference, Tag: @my_book_stro.Tag, Title: @my_book_stro.Title }
    assert_redirected_to my_book_stro_path(assigns(:my_book_stro))
  end

  test "should destroy my_book_stro" do
    assert_difference('MyBookStroe.count', -1) do
      delete :destroy, id: @my_book_stro
    end

    assert_redirected_to my_book_stroes_path
  end
end
