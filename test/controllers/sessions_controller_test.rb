require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should create session when login successful" do
    sample_user = users(:one)
    post create_session_url, params: {
      email: sample_user.email,
      password: "secret" # This is the unencrypted password, see users.yaml
    }
    assert_redirected_to user_path(sample_user)
  end


  test "should destroy session when logout" do
    delete destroy_session_url
    assert_nil session[:user_id]
    assert_redirected_to root_url
  end

end
