require "application_system_test_case"

class MumsTest < ApplicationSystemTestCase
  setup do
    @mum = mums(:one)
  end

  test "visiting the index" do
    visit mums_url
    assert_selector "h1", text: "Mums"
  end

  test "creating a Mum" do
    visit mums_url
    click_on "New Mum"

    fill_in "Married", with: @mum.married
    fill_in "Name", with: @mum.name
    fill_in "Relation", with: @mum.relation
    click_on "Create Mum"

    assert_text "Mum was successfully created"
    click_on "Back"
  end

  test "updating a Mum" do
    visit mums_url
    click_on "Edit", match: :first

    fill_in "Married", with: @mum.married
    fill_in "Name", with: @mum.name
    fill_in "Relation", with: @mum.relation
    click_on "Update Mum"

    assert_text "Mum was successfully updated"
    click_on "Back"
  end

  test "destroying a Mum" do
    visit mums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mum was successfully destroyed"
  end
end
