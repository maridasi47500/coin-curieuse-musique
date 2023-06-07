require "application_system_test_case"

class HasmanydansesTest < ApplicationSystemTestCase
  setup do
    @hasmanydanse = hasmanydanses(:one)
  end

  test "visiting the index" do
    visit hasmanydanses_url
    assert_selector "h1", text: "Hasmanydanses"
  end

  test "should create hasmanydanse" do
    visit hasmanydanses_url
    click_on "New hasmanydanse"

    fill_in "Danse", with: @hasmanydanse.danse_id
    fill_in "Mylayout", with: @hasmanydanse.mylayout
    fill_in "Piece", with: @hasmanydanse.piece_id
    click_on "Create Hasmanydanse"

    assert_text "Hasmanydanse was successfully created"
    click_on "Back"
  end

  test "should update Hasmanydanse" do
    visit hasmanydanse_url(@hasmanydanse)
    click_on "Edit this hasmanydanse", match: :first

    fill_in "Danse", with: @hasmanydanse.danse_id
    fill_in "Mylayout", with: @hasmanydanse.mylayout
    fill_in "Piece", with: @hasmanydanse.piece_id
    click_on "Update Hasmanydanse"

    assert_text "Hasmanydanse was successfully updated"
    click_on "Back"
  end

  test "should destroy Hasmanydanse" do
    visit hasmanydanse_url(@hasmanydanse)
    click_on "Destroy this hasmanydanse", match: :first

    assert_text "Hasmanydanse was successfully destroyed"
  end
end
