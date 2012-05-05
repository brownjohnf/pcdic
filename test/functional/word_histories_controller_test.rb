require 'test_helper'

class WordHistoriesControllerTest < ActionController::TestCase
  setup do
    @word_history = word_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_history" do
    assert_difference('WordHistory.count') do
      post :create, word_history: { part_a: @word_history.part_a, part_b: @word_history.part_b, part_c: @word_history.part_c, part_d: @word_history.part_d, part_e: @word_history.part_e, part_f: @word_history.part_f, user_id: @word_history.user_id, word_id: @word_history.word_id }
    end

    assert_redirected_to word_history_path(assigns(:word_history))
  end

  test "should show word_history" do
    get :show, id: @word_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_history
    assert_response :success
  end

  test "should update word_history" do
    put :update, id: @word_history, word_history: { part_a: @word_history.part_a, part_b: @word_history.part_b, part_c: @word_history.part_c, part_d: @word_history.part_d, part_e: @word_history.part_e, part_f: @word_history.part_f, user_id: @word_history.user_id, word_id: @word_history.word_id }
    assert_redirected_to word_history_path(assigns(:word_history))
  end

  test "should destroy word_history" do
    assert_difference('WordHistory.count', -1) do
      delete :destroy, id: @word_history
    end

    assert_redirected_to word_histories_path
  end
end
