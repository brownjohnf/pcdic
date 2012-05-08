require 'test_helper'

class MasterTagsControllerTest < ActionController::TestCase
  setup do
    @master_tag = master_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:master_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create master_tag" do
    assert_difference('MasterTag.count') do
      post :create, master_tag: { en: @master_tag.en, fr: @master_tag.fr }
    end

    assert_redirected_to master_tag_path(assigns(:master_tag))
  end

  test "should show master_tag" do
    get :show, id: @master_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @master_tag
    assert_response :success
  end

  test "should update master_tag" do
    put :update, id: @master_tag, master_tag: { en: @master_tag.en, fr: @master_tag.fr }
    assert_redirected_to master_tag_path(assigns(:master_tag))
  end

  test "should destroy master_tag" do
    assert_difference('MasterTag.count', -1) do
      delete :destroy, id: @master_tag
    end

    assert_redirected_to master_tags_path
  end
end
