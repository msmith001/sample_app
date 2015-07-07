require 'test_helper'

class UsersSingupTest < ActionDispatch::IntegrationTest
  
	test "invalid signup information" do
		get signup_path
		assert_no_difference 'User.count' do
			post users_path, user: { name: "",
				email: "user@invalid", password: "no",
				password_confirmation: "match" }
		end
		assert_template 'users/new'
	end

	test "valid signup information" do
		get signup_path
		assert_difference 'User.count', 1 do
			post_via_redirect users_path, user: { name:
				"Sample User", email: "user@sample.com",
				password: "password",
				password_confirmation: "password" }
		end
		assert_template 'users/show'
	end

end
