require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end
  
   test "validations of the first user fixture should pass" do
     assert @user.validate
   end
   
   test "create a new user should be ok" do
     new_user = User.new(email: "moi@toi.eu", password: "12345678")
     assert new_user.save
   end
   
   test "create a new user with password too short should fail" do
     new_user = User.new(email: "moi@toi.eu", password: "12345")
     assert_not new_user.save
   end
   
   test "create a new user with bad email format should fail" do
     new_user = User.new(email: "moi", password: "12345678")
     assert_not new_user.save
   end
end
