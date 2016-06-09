require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
	test "layout links" do
		get root_path
		assert :success
		assert_select "[href=?]", root_path, count: 2
		assert_select "[href=?]", about_path
		assert_select "[href=?]", new_contact_path
	end

end
