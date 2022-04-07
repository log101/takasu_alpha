ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def log_in
    sample_user = users(:one)
    post create_session_url, params: {
      email: sample_user.email,
      password: "secret" # This is the unencrypted password, see users.yaml
    }
  end
end
