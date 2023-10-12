require "test_helper"

class MusicstuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicstuff = musicstuffs(:one)
  end

  test "should get index" do
    get musicstuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_musicstuff_url
    assert_response :success
  end

  test "should create musicstuff" do
    assert_difference("Musicstuff.count") do
      post musicstuffs_url, params: { musicstuff: { image: @musicstuff.image, name: @musicstuff.name } }
    end

    assert_redirected_to musicstuff_url(Musicstuff.last)
  end

  test "should show musicstuff" do
    get musicstuff_url(@musicstuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicstuff_url(@musicstuff)
    assert_response :success
  end

  test "should update musicstuff" do
    patch musicstuff_url(@musicstuff), params: { musicstuff: { image: @musicstuff.image, name: @musicstuff.name } }
    assert_redirected_to musicstuff_url(@musicstuff)
  end

  test "should destroy musicstuff" do
    assert_difference("Musicstuff.count", -1) do
      delete musicstuff_url(@musicstuff)
    end

    assert_redirected_to musicstuffs_url
  end
end
