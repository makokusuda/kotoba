require 'test_helper'

class WordsControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get new_path
    assert_response :success
  end

  test "should get index" do
    get index_path
    assert_response :success
  end

end
