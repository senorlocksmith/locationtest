require "application_system_test_case"

class SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = settings(:one)
  end

  test "visiting the index" do
    visit settings_url
    assert_selector "h1", text: "Settings"
  end

  test "creating a Setting" do
    visit settings_url
    click_on "New Setting"

    fill_in "Description", with: @setting.description
    fill_in "E filming date", with: @setting.e_filming_date
    fill_in "Name", with: @setting.name
    fill_in "Placement", with: @setting.placement
    fill_in "Project", with: @setting.project_id
    fill_in "S filming date", with: @setting.s_filming_date
    click_on "Create Setting"

    assert_text "Setting was successfully created"
    click_on "Back"
  end

  test "updating a Setting" do
    visit settings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @setting.description
    fill_in "E filming date", with: @setting.e_filming_date
    fill_in "Name", with: @setting.name
    fill_in "Placement", with: @setting.placement
    fill_in "Project", with: @setting.project_id
    fill_in "S filming date", with: @setting.s_filming_date
    click_on "Update Setting"

    assert_text "Setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Setting" do
    visit settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setting was successfully destroyed"
  end
end
