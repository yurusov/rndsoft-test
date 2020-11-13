require 'test_helper'

class AdminIntegrationTest < ActionDispatch::IntegrationTest
  
  include Devise::Test::IntegrationHelpers

  test "admin_can_create_articles" do
    users = sign_in users(:admin)
    get "/"
    assert_select "a", "admin"
    get "/articles/new"
    assert_response :success
    post "/articles",params: {
      article: { 
        title: "can create",
        content: "article successfully."
      }
    }
    assert_response :redirect
    follow_redirect!
    get "/articles/"
    assert_select "td", "can create"
  end
  
end