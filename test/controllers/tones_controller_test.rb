require "test_helper"

class TonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tone = tones(:one)
  end

  test "should get index" do
    get tones_url
    assert_response :success
  end

  test "should get new" do
    get new_tone_url
    assert_response :success
  end

  test "should create tone" do
    assert_difference("Tone.count") do
      post tones_url, params: { tone: { name: @tone.name } }
    end

    assert_redirected_to tone_url(Tone.last)
  end

  test "should show tone" do
    get tone_url(@tone)
    assert_response :success
  end

  test "should get edit" do
    get edit_tone_url(@tone)
    assert_response :success
  end

  test "should update tone" do
    patch tone_url(@tone), params: { tone: { name: @tone.name } }
    assert_redirected_to tone_url(@tone)
  end

  test "should destroy tone" do
    assert_difference("Tone.count", -1) do
      delete tone_url(@tone)
    end

    assert_redirected_to tones_url
  end
end
