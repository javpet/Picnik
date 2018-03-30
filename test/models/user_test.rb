require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test user shouldn't be blank" do
    assert_equal User.new.save, false
  end

  test "should save if user is full" do
    # users is coming from the fixtures filename ==> users.yml
    @user = users(:peter)
    assert_equal @user.save, true
  end
end
