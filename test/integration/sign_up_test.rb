require "test_helper"

class SignUpTest < ActionDispatch::IntegrationTest
  test "Create a new user" do
    get signup_path
    assert_response :success
    assert_difference "User.count", 1 do
      post users_path, params: { user: { username: "newuser", email: "B6b4j@example.com", password: "password" } }
    end 
  end

  test "invalid user submission results in failure" do
    get signup_path
    assert_response :success
    assert_no_difference "User.count" do
      post users_path, params: { user: { username: " ", email: " ", password: " " } }
    end 
    assert_match "errors", response.body
    assert_select 'div.alert'
    assert_select 'h4.alert-heading'
  end

  test "email uniqueness validation" do
    user1 = User.create(username: "first", email: "unique@example.com", password: "password")
    user2 = User.new(username: "second", email: "unique@example.com", password: "password")

    assert_not user2.valid?
    assert_includes user2.errors[:email], "has already been taken"
  end 

   test "username uniqueness validation" do
    user1 = User.create(username: "first", email: "unique@example.com", password: "password")
    user2 = User.new(username: "first", email: "another@example.com", password: "password")

    assert_not user2.valid?
    assert_includes user2.errors[:username], "has already been taken"
  end 
  
end
