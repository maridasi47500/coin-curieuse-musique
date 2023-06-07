require "application_system_test_case"

class DansesTest < ApplicationSystemTestCase
  setup do
    @danse = danses(:one)
  end

  test "visiting the index" do
    visit danses_url
    assert_selector "h1", text: "Danses"
  end

  test "should create danse" do
    visit danses_url
    click_on "New danse"

    fill_in "Body", with: @danse.body
    fill_in "Title", with: @danse.title
    click_on "Create Danse"

    assert_text "Danse was successfully created"
    click_on "Back"
  end

  test "should update Danse" do
    visit danse_url(@danse)
    click_on "Edit this danse", match: :first

    fill_in "Body", with: @danse.body
    fill_in "Title", with: @danse.title
    click_on "Update Danse"

    assert_text "Danse was successfully updated"
    click_on "Back"
  end

  test "should destroy Danse" do
    visit danse_url(@danse)
    click_on "Destroy this danse", match: :first

    assert_text "Danse was successfully destroyed"
  end
end
