require "application_system_test_case"

class OptionalModulesTest < ApplicationSystemTestCase
  setup do
    @optional_module = optional_modules(:one)
  end

  test "visiting the index" do
    visit optional_modules_url
    assert_selector "h1", text: "Optional Modules"
  end

  test "creating a Optional module" do
    visit optional_modules_url
    click_on "New Optional Module"

    fill_in "Description", with: @optional_module.description
    fill_in "Name", with: @optional_module.name
    click_on "Create Optional module"

    assert_text "Optional module was successfully created"
    click_on "Back"
  end

  test "updating a Optional module" do
    visit optional_modules_url
    click_on "Edit", match: :first

    fill_in "Description", with: @optional_module.description
    fill_in "Name", with: @optional_module.name
    click_on "Update Optional module"

    assert_text "Optional module was successfully updated"
    click_on "Back"
  end

  test "destroying a Optional module" do
    visit optional_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Optional module was successfully destroyed"
  end
end
