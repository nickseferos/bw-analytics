require "application_system_test_case"

class TerminalsTest < ApplicationSystemTestCase
  setup do
    @terminal = terminals(:one)
  end

  test "visiting the index" do
    visit terminals_url
    assert_selector "h1", text: "Terminals"
  end

  test "creating a Terminal" do
    visit terminals_url
    click_on "New Terminal"

    fill_in "City", with: @terminal.city
    fill_in "Country", with: @terminal.country_id
    fill_in "Port", with: @terminal.port_id
    fill_in "Postal", with: @terminal.postal
    fill_in "Street", with: @terminal.street
    fill_in "Terminal", with: @terminal.terminal
    click_on "Create Terminal"

    assert_text "Terminal was successfully created"
    click_on "Back"
  end

  test "updating a Terminal" do
    visit terminals_url
    click_on "Edit", match: :first

    fill_in "City", with: @terminal.city
    fill_in "Country", with: @terminal.country_id
    fill_in "Port", with: @terminal.port_id
    fill_in "Postal", with: @terminal.postal
    fill_in "Street", with: @terminal.street
    fill_in "Terminal", with: @terminal.terminal
    click_on "Update Terminal"

    assert_text "Terminal was successfully updated"
    click_on "Back"
  end

  test "destroying a Terminal" do
    visit terminals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Terminal was successfully destroyed"
  end
end
