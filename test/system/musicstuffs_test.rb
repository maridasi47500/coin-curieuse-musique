require "application_system_test_case"

class MusicstuffsTest < ApplicationSystemTestCase
  setup do
    @musicstuff = musicstuffs(:one)
  end

  test "visiting the index" do
    visit musicstuffs_url
    assert_selector "h1", text: "Musicstuffs"
  end

  test "should create musicstuff" do
    visit musicstuffs_url
    click_on "New musicstuff"

    fill_in "Image", with: @musicstuff.image
    fill_in "Name", with: @musicstuff.name
    click_on "Create Musicstuff"

    assert_text "Musicstuff was successfully created"
    click_on "Back"
  end

  test "should update Musicstuff" do
    visit musicstuff_url(@musicstuff)
    click_on "Edit this musicstuff", match: :first

    fill_in "Image", with: @musicstuff.image
    fill_in "Name", with: @musicstuff.name
    click_on "Update Musicstuff"

    assert_text "Musicstuff was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicstuff" do
    visit musicstuff_url(@musicstuff)
    click_on "Destroy this musicstuff", match: :first

    assert_text "Musicstuff was successfully destroyed"
  end
end
