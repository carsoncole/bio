require "test_helper"

class SettingTest < ActiveSupport::TestCase
  test "creating a setting" do
    assert create(:setting)
  end
end
