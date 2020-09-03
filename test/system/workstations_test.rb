require "application_system_test_case"

class WorkstationsTest < ApplicationSystemTestCase
  setup do
    @workstation = workstations(:one)
  end

  test "visiting the index" do
    visit workstations_url
    assert_selector "h1", text: "Workstations"
  end

  test "creating a Workstation" do
    visit workstations_url
    click_on "New Workstation"

    fill_in "Description", with: @workstation.description
    fill_in "Title", with: @workstation.title
    click_on "Create Workstation"

    assert_text "Workstation was successfully created"
    click_on "Back"
  end

  test "updating a Workstation" do
    visit workstations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @workstation.description
    fill_in "Title", with: @workstation.title
    click_on "Update Workstation"

    assert_text "Workstation was successfully updated"
    click_on "Back"
  end

  test "destroying a Workstation" do
    visit workstations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workstation was successfully destroyed"
  end
end
