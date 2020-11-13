require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should not get new" do
    get new_article_url
    assert_redirected_to '/users/sign_in'
  end

  test "should not create article" do
    assert_no_difference('Article.count') do
      post articles_url, params: { article: { content: @article.content, title: @article.title, user_id: @article.user_id } }
    end
    assert_redirected_to '/users/sign_in'
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should not get edit" do
    get edit_article_url(@article)
    assert_redirected_to '/users/sign_in'
  end

  test "should not destroy article" do
    assert_no_difference('Article.count') do
      delete article_url(@article)
    end
    assert_redirected_to '/users/sign_in'
  end
end
