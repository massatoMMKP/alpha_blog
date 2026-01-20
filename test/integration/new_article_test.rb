require "test_helper"

class NewArticleTest < ActionDispatch::IntegrationTest

   setup do
    @user = User.create(username: "joe", email: "joe@me.com", password: "password", admin: true)
    sign_in_as(@user)
  end
  test "should get new" do
    get "/articles/new"
    assert_response :success
    assert_difference "Article.count", 1 do
      post articles_path, params: { article: { title: "New Article", description: "This is the description of the new article" } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "New Article", response.body
  end

    test "should reject invalid article submission" do
    get "/articles/new"
    assert_response :success
    assert_no_difference "Article.count" do
      post articles_path, params: { article: { title: " ", description: " " } }
    end
    assert_match "errors", response.body
    assert_select 'div.alert'
    assert_select 'h4.alert-heading'
  end
end
