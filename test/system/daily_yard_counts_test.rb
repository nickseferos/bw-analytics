require "application_system_test_case"

class DailyYardCountsTest < ApplicationSystemTestCase
  setup do
    @daily_yard_count = daily_yard_counts(:one)
  end

  test "visiting the index" do
    visit daily_yard_counts_url
    assert_selector "h1", text: "Daily Yard Counts"
  end

  test "creating a Daily yard count" do
    visit daily_yard_counts_url
    click_on "New Daily Yard Count"

    fill_in "Date", with: @daily_yard_count.date
    fill_in "Detained", with: @daily_yard_count.detained
    fill_in "Note", with: @daily_yard_count.note
    fill_in "Terminal", with: @daily_yard_count.terminal_id
    fill_in "Transactions", with: @daily_yard_count.transactions
    fill_in "Trucks", with: @daily_yard_count.trucks
    fill_in "Turntime", with: @daily_yard_count.turntime
    click_on "Create Daily yard count"

    assert_text "Daily yard count was successfully created"
    click_on "Back"
  end

  test "updating a Daily yard count" do
    visit daily_yard_counts_url
    click_on "Edit", match: :first

    fill_in "Date", with: @daily_yard_count.date
    fill_in "Detained", with: @daily_yard_count.detained
    fill_in "Note", with: @daily_yard_count.note
    fill_in "Terminal", with: @daily_yard_count.terminal_id
    fill_in "Transactions", with: @daily_yard_count.transactions
    fill_in "Trucks", with: @daily_yard_count.trucks
    fill_in "Turntime", with: @daily_yard_count.turntime
    click_on "Update Daily yard count"

    assert_text "Daily yard count was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily yard count" do
    visit daily_yard_counts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily yard count was successfully destroyed"
  end
end
