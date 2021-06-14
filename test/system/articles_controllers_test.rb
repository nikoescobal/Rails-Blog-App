require "application_system_test_case"

class ArticlesControllersTest < ApplicationSystemTestCase
  setup do
    @articles_controller = articles_controllers(:one)
  end

  test "visiting the index" do
    visit articles_controllers_url
    assert_selector "h1", text: "Articles Controllers"
  end

  test "creating a Articles controller" do
    visit articles_controllers_url
    click_on "New Articles Controller"

    click_on "Create Articles controller"

    assert_text "Articles controller was successfully created"
    click_on "Back"
  end

  test "updating a Articles controller" do
    visit articles_controllers_url
    click_on "Edit", match: :first

    click_on "Update Articles controller"

    assert_text "Articles controller was successfully updated"
    click_on "Back"
  end

  test "destroying a Articles controller" do
    visit articles_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articles controller was successfully destroyed"
  end
end
