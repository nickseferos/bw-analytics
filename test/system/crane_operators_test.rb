require "application_system_test_case"

class CraneOperatorsTest < ApplicationSystemTestCase
  setup do
    @crane_operator = crane_operators(:one)
  end

  test "visiting the index" do
    visit crane_operators_url
    assert_selector "h1", text: "Crane Operators"
  end

  test "creating a Crane operator" do
    visit crane_operators_url
    click_on "New Crane Operator"

    fill_in "Name", with: @crane_operator.name
    fill_in "Work", with: @crane_operator.work_id
    click_on "Create Crane operator"

    assert_text "Crane operator was successfully created"
    click_on "Back"
  end

  test "updating a Crane operator" do
    visit crane_operators_url
    click_on "Edit", match: :first

    fill_in "Name", with: @crane_operator.name
    fill_in "Work", with: @crane_operator.work_id
    click_on "Update Crane operator"

    assert_text "Crane operator was successfully updated"
    click_on "Back"
  end

  test "destroying a Crane operator" do
    visit crane_operators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crane operator was successfully destroyed"
  end
end
