ENV['APP_ENV'] = 'test'

require 'app'
require 'test/unit'
require 'rack/test'

class HelloTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'hell', last_response.body
  end
end
