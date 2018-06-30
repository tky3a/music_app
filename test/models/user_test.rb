require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user save" do
    user = User.new({
      username: "hogehoge",
      email: "hogehoge@example.com",
      password: "password12345",
      password_confirmation: "password12345"
      })
      assert user.save, "true"
  end
end
