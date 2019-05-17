require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get say_hello_url
    assert_response :success
  end

  test "should get goodbye" do
    get say_goodbye_url
    assert_response :success
  end

  test "should get ahoy" do
    get say_ahoy_url
    assert_response :success
  end

end
