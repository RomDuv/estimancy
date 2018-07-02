require "application_system_test_case"

class MaTablesTest < ApplicationSystemTestCase
  setup do
    @ma_table = ma_tables(:one)
  end

  test "visiting the index" do
    visit ma_tables_url
    assert_selector "h1", text: "Ma Tables"
  end

  test "creating a Ma table" do
    visit ma_tables_url
    click_on "New Ma Table"

    fill_in "Age", with: @ma_table.age
    fill_in "Description", with: @ma_table.description
    fill_in "Name", with: @ma_table.name
    click_on "Create Ma table"

    assert_text "Ma table was successfully created"
    click_on "Back"
  end

  test "updating a Ma table" do
    visit ma_tables_url
    click_on "Edit", match: :first

    fill_in "Age", with: @ma_table.age
    fill_in "Description", with: @ma_table.description
    fill_in "Name", with: @ma_table.name
    click_on "Update Ma table"

    assert_text "Ma table was successfully updated"
    click_on "Back"
  end

  test "destroying a Ma table" do
    visit ma_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ma table was successfully destroyed"
  end
end
