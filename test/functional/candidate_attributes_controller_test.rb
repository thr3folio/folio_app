require 'test_helper'

class CandidateAttributesControllerTest < ActionController::TestCase
  setup do
    @candidate_attribute = candidate_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidate_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate_attribute" do
    assert_difference('CandidateAttribute.count') do
      post :create, candidate_attribute: { bio: @candidate_attribute.bio, candidate_id: @candidate_attribute.candidate_id, company_id: @candidate_attribute.company_id, industry: @candidate_attribute.industry, location: @candidate_attribute.location, skills: @candidate_attribute.skills, title: @candidate_attribute.title, years_experience: @candidate_attribute.years_experience }
    end

    assert_redirected_to candidate_attribute_path(assigns(:candidate_attribute))
  end

  test "should show candidate_attribute" do
    get :show, id: @candidate_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate_attribute
    assert_response :success
  end

  test "should update candidate_attribute" do
    put :update, id: @candidate_attribute, candidate_attribute: { bio: @candidate_attribute.bio, candidate_id: @candidate_attribute.candidate_id, company_id: @candidate_attribute.company_id, industry: @candidate_attribute.industry, location: @candidate_attribute.location, skills: @candidate_attribute.skills, title: @candidate_attribute.title, years_experience: @candidate_attribute.years_experience }
    assert_redirected_to candidate_attribute_path(assigns(:candidate_attribute))
  end

  test "should destroy candidate_attribute" do
    assert_difference('CandidateAttribute.count', -1) do
      delete :destroy, id: @candidate_attribute
    end

    assert_redirected_to candidate_attributes_path
  end
end
