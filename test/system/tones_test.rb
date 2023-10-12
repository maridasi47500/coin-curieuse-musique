require "application_system_test_case"

class TonesTest < ApplicationSystemTestCase
  setup do
    @tone = tones(:one)
  end

  test "visiting the index" do
    visit tones_url
    assert_selector "h1", text: "Tones"
  end

  test "should create tone" do
    visit tones_url
    click_on "New tone"

    fill_in "Name", with: @tone.name
    click_on "Create Tone"

    assert_text "Tone was successfully created"
    click_on "Back"
  end

  test "should update Tone" do
    visit tone_url(@tone)
    click_on "Edit this tone", match: :first

    fill_in "Name", with: @tone.name
    click_on "Update Tone"

    assert_text "Tone was successfully updated"
    click_on "Back"
  end

  test "should destroy Tone" do
    visit tone_url(@tone)
    click_on "Destroy this tone", match: :first

    assert_text "Tone was successfully destroyed"
  end
end
