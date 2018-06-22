require "application_system_test_case"

class CousinsTest < ApplicationSystemTestCase
  setup do
    @cousin = cousins(:one)
  end

  test "visiting the index" do
    visit cousins_url
    assert_selector "h1", text: "Cousins"
  end

  test "creating a Cousin" do
    visit cousins_url
    click_on "New Cousin"

    fill_in "Gender", with: @cousin.gender
    fill_in "Married", with: @cousin.married
    fill_in "Mum", with: @cousin.mum_id
    fill_in "Name", with: @cousin.name
    click_on "Create Cousin"

    assert_text "Cousin was successfully created"
    click_on "Back"
  end

  test "updating a Cousin" do
    visit cousins_url
    click_on "Edit", match: :first

    fill_in "Gender", with: @cousin.gender
    fill_in "Married", with: @cousin.married
    fill_in "Mum", with: @cousin.mum_id
    fill_in "Name", with: @cousin.name
    click_on "Update Cousin"

    assert_text "Cousin was successfully updated"
    click_on "Back"
  end

  test "destroying a Cousin" do
    visit cousins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cousin was successfully destroyed"
  end
end
