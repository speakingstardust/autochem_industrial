require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
	test "layout links" do
		get root_path
		assert :success
		assert_select "[href=?]", root_path, count: 2
		assert_select "[href=?]", static_pages_about_path
		assert_select "[href=?]", static_pages_contact_us_path
	end

end
