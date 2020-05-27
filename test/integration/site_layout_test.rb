require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "top page layout links" do
    get root_path
    assert_template 'words/home'
    assert_select "a[href=?]", index_path
  end

  test "index page layout links" do
    get root_path
    get index_path

    assert_template 'words/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", new_path
  end
end
