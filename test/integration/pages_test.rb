require "test_helper"

class PagesTest < ActionDispatch::IntegrationTest
  test "the front page loads" do
    get "/"

    assert_response :success
  end

  test "the front page's stylesheet actually contains styles" do
    get "/"

    stylesheet_path = css_select("link[rel=stylesheet]").first["href"]
    get stylesheet_path

    assert_response :success
    assert_includes @response.body, "background-color"
  end

  test "the items index loads" do
    get "/items"

    assert_response :success
  end

  test "the admin area is reachable" do
    get "/admin"

    assert_redirected_to alchemy.admin_dashboard_path
  end
end
