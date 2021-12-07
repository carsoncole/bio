require "test_helper"

class ExperienceTest < ActiveSupport::TestCase
  test "creating an experience" do
    assert create(:experience)
  end
end
