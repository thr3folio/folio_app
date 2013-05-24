require 'test_helper'

class JobRecruitersControllerTest < ActionController::TestCase
  setup do
    @job_recruiter = job_recruiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_recruiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_recruiter" do
    assert_difference('JobRecruiter.count') do
      post :create, job_recruiter: { job_id: @job_recruiter.job_id, recruiter_id: @job_recruiter.recruiter_id }
    end

    assert_redirected_to job_recruiter_path(assigns(:job_recruiter))
  end

  test "should show job_recruiter" do
    get :show, id: @job_recruiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_recruiter
    assert_response :success
  end

  test "should update job_recruiter" do
    put :update, id: @job_recruiter, job_recruiter: { job_id: @job_recruiter.job_id, recruiter_id: @job_recruiter.recruiter_id }
    assert_redirected_to job_recruiter_path(assigns(:job_recruiter))
  end

  test "should destroy job_recruiter" do
    assert_difference('JobRecruiter.count', -1) do
      delete :destroy, id: @job_recruiter
    end

    assert_redirected_to job_recruiters_path
  end
end
