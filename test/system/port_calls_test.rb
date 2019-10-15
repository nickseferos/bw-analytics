require "application_system_test_case"

class PortCallsTest < ApplicationSystemTestCase
  setup do
    @port_call = port_calls(:one)
  end

  test "visiting the index" do
    visit port_calls_url
    assert_selector "h1", text: "Port Calls"
  end

  test "creating a Port call" do
    visit port_calls_url
    click_on "New Port Call"

    fill_in "Ata", with: @port_call.ata
    fill_in "Atd", with: @port_call.atd
    check "Departed" if @port_call.departed
    fill_in "Eta", with: @port_call.eta
    fill_in "Etd", with: @port_call.etd
    fill_in "Terminal", with: @port_call.terminal_id
    fill_in "Voyage", with: @port_call.voyage_id
    click_on "Create Port call"

    assert_text "Port call was successfully created"
    click_on "Back"
  end

  test "updating a Port call" do
    visit port_calls_url
    click_on "Edit", match: :first

    fill_in "Ata", with: @port_call.ata
    fill_in "Atd", with: @port_call.atd
    check "Departed" if @port_call.departed
    fill_in "Eta", with: @port_call.eta
    fill_in "Etd", with: @port_call.etd
    fill_in "Terminal", with: @port_call.terminal_id
    fill_in "Voyage", with: @port_call.voyage_id
    click_on "Update Port call"

    assert_text "Port call was successfully updated"
    click_on "Back"
  end

  test "destroying a Port call" do
    visit port_calls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Port call was successfully destroyed"
  end
end
