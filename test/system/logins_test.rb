require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  test "make sure the login test has the workd" do
    visit "/session/new"

    assert_selector "h3", text: "Log in"
  end

  test "make sure the valid user can log in" do
      visit new_session_path

      fill_in 'Username', with: 'Peter'
      fill_in'Password', with: 'password123'

      click_button 'Log in'

      assert_equal page.current_path, items_path
  end
end
