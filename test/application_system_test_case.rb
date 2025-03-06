require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  # # test/application_system_test_case.rb
  driven_by :headless_chrome # Update this line
end
