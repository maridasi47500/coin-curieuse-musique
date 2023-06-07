require "test_helper"

class DansesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danse = danses(:one)
  end

  test "should get index" do
    get danses_url
    assert_response :success
  end

  test "should get new" do
    get new_danse_url
    assert_response :success
  end

  test "should create danse" do
    assert_difference("Danse.count") do
      post danses_url, params: { danse: { body: @danse.body, title: @danse.title } }
    end

    assert_redirected_to danse_url(Danse.last)
  end

  test "should show danse" do
    get danse_url(@danse)
    assert_response :success
  end

  test "should get edit" do
    get edit_danse_url(@danse)
    assert_response :success
  end

  test "should update danse" do
    patch danse_url(@danse), params: { danse: { body: @danse.body, title: @danse.title } }
    assert_redirected_to danse_url(@danse)
  end

  test "should destroy danse" do
    assert_difference("Danse.count", -1) do
      delete danse_url(@danse)
    end

    assert_redirected_to danses_url
  end
end
