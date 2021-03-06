require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience = create(:experience)
  end

  test "should get new" do
    get new_experience_path
    assert_response :success
  end

  test "should create experience" do
    assert_difference("Experience.count") do
      post experiences_url, params: { experience: { description: @experience.description, end_date: @experience.end_date, start_date: @experience.start_date, name: @experience.name, title: @experience.title } }
    end

    assert_redirected_to root_url
  end

  test "should get edit" do
    get edit_experience_url(@experience)
    assert_response :success
  end

  test "should update experience" do
    patch experience_url(@experience), params: { experience: { description: @experience.description, end_date: @experience.end_date, start_date: @experience.start_date, title: @experience.title } }
    assert_redirected_to root_url
  end

  test "should destroy experience" do
    assert_difference("Experience.count", -1) do
      delete experience_url(@experience)
    end

    assert_redirected_to experiences_url
  end
end
