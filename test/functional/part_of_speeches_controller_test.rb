require 'test_helper'

class PartOfSpeechesControllerTest < ActionController::TestCase
  setup do
    @part_of_speech = part_of_speeches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_of_speeches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_of_speech" do
    assert_difference('PartOfSpeech.count') do
      post :create, part_of_speech: { description: @part_of_speech.description, name: @part_of_speech.name }
    end

    assert_redirected_to part_of_speech_path(assigns(:part_of_speech))
  end

  test "should show part_of_speech" do
    get :show, id: @part_of_speech
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_of_speech
    assert_response :success
  end

  test "should update part_of_speech" do
    put :update, id: @part_of_speech, part_of_speech: { description: @part_of_speech.description, name: @part_of_speech.name }
    assert_redirected_to part_of_speech_path(assigns(:part_of_speech))
  end

  test "should destroy part_of_speech" do
    assert_difference('PartOfSpeech.count', -1) do
      delete :destroy, id: @part_of_speech
    end

    assert_redirected_to part_of_speeches_path
  end
end
