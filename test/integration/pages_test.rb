require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
  test 'the front page loads' do
    get '/'

    assert_response :success
  end

  test 'the items index loads' do
    get '/items'

    assert_response :success
  end

  test 'the admin area is reachable' do
    get '/admin'

    assert_response :redirect
  end
end
