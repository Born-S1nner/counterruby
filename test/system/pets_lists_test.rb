require "application_system_test_case"

class PetsListsTest < ApplicationSystemTestCase
  setup do
    @pets_list = pets_lists(:one)
  end

  test "visiting the index" do
    visit pets_lists_url
    assert_selector "h1", text: "Pets Lists"
  end

  test "creating a Pets list" do
    visit pets_lists_url
    click_on "New Pets List"

    fill_in "Owned date", with: @pets_list.owned_date
    fill_in "Owner", with: @pets_list.owner
    fill_in "Pet name", with: @pets_list.pet_name
    fill_in "Specie", with: @pets_list.specie
    click_on "Create Pets list"

    assert_text "Pets list was successfully created"
    click_on "Back"
  end

  test "updating a Pets list" do
    visit pets_lists_url
    click_on "Edit", match: :first

    fill_in "Owned date", with: @pets_list.owned_date
    fill_in "Owner", with: @pets_list.owner
    fill_in "Pet name", with: @pets_list.pet_name
    fill_in "Specie", with: @pets_list.specie
    click_on "Update Pets list"

    assert_text "Pets list was successfully updated"
    click_on "Back"
  end

  test "destroying a Pets list" do
    visit pets_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pets list was successfully destroyed"
  end
end
