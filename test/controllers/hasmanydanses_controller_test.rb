require "test_helper"

class HasmanydansesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hasmanydanse = hasmanydanses(:one)
  end

  test "should get index" do
    get hasmanydanses_url
    assert_response :success
  end

  test "should get new" do
    get new_hasmanydanse_url
    assert_response :success
  end

  test "should create hasmanydanse" do
    assert_difference("Hasmanydanse.count") do
      post hasmanydanses_url, params: { hasmanydanse: { danse_id: @hasmanydanse.danse_id, mylayout: @hasmanydanse.mylayout, piece_id: @hasmanydanse.piece_id } }
    end

    assert_redirected_to hasmanydanse_url(Hasmanydanse.last)
  end

  test "should show hasmanydanse" do
    get hasmanydanse_url(@hasmanydanse)
    assert_response :success
  end

  test "should get edit" do
    get edit_hasmanydanse_url(@hasmanydanse)
    assert_response :success
  end

  test "should update hasmanydanse" do
    patch hasmanydanse_url(@hasmanydanse), params: { hasmanydanse: { danse_id: @hasmanydanse.danse_id, mylayout: @hasmanydanse.mylayout, piece_id: @hasmanydanse.piece_id } }
    assert_redirected_to hasmanydanse_url(@hasmanydanse)
  end

  test "should destroy hasmanydanse" do
    assert_difference("Hasmanydanse.count", -1) do
      delete hasmanydanse_url(@hasmanydanse)
    end

    assert_redirected_to hasmanydanses_url
  end
end
