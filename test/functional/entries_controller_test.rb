require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { comments: @entry.comments, first_form: @entry.first_form, language_id: @entry.language_id, part_a: @entry.part_a, part_b: @entry.part_b, part_c: @entry.part_c, part_d: @entry.part_d, part_e: @entry.part_e, part_f: @entry.part_f, part_of_speech_id: @entry.part_of_speech_id, primary_part: @entry.primary_part, second_form: @entry.second_form, third_form: @entry.third_form }
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry
    assert_response :success
  end

  test "should update entry" do
    put :update, id: @entry, entry: { comments: @entry.comments, first_form: @entry.first_form, language_id: @entry.language_id, part_a: @entry.part_a, part_b: @entry.part_b, part_c: @entry.part_c, part_d: @entry.part_d, part_e: @entry.part_e, part_f: @entry.part_f, part_of_speech_id: @entry.part_of_speech_id, primary_part: @entry.primary_part, second_form: @entry.second_form, third_form: @entry.third_form }
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_redirected_to entries_path
  end
end
