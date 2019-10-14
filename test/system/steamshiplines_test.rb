require "application_system_test_case"

class SteamshiplinesTest < ApplicationSystemTestCase
  setup do
    @steamshipline = steamshiplines(:one)
  end

  test "visiting the index" do
    visit steamshiplines_url
    assert_selector "h1", text: "Steamshiplines"
  end

  test "creating a Steamshipline" do
    visit steamshiplines_url
    click_on "New Steamshipline"

    fill_in "Country", with: @steamshipline.country_id
    fill_in "Name", with: @steamshipline.name
    click_on "Create Steamshipline"

    assert_text "Steamshipline was successfully created"
    click_on "Back"
  end

  test "updating a Steamshipline" do
    visit steamshiplines_url
    click_on "Edit", match: :first

    fill_in "Country", with: @steamshipline.country_id
    fill_in "Name", with: @steamshipline.name
    click_on "Update Steamshipline"

    assert_text "Steamshipline was successfully updated"
    click_on "Back"
  end

  test "destroying a Steamshipline" do
    visit steamshiplines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Steamshipline was successfully destroyed"
  end
end
