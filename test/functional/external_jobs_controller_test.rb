require 'test_helper'

class ExternalJobsControllerTest < ActionController::TestCase
  setup do
    @external_job = external_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:external_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create external_job" do
    assert_difference('ExternalJob.count') do
      post :create, external_job: { contact: @external_job.contact, description: @external_job.description, hiring_manager_id: @external_job.hiring_manager_id, job_id: @external_job.job_id }
    end

    assert_redirected_to external_job_path(assigns(:external_job))
  end

  test "should show external_job" do
    get :show, id: @external_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @external_job
    assert_response :success
  end

  test "should update external_job" do
    put :update, id: @external_job, external_job: { contact: @external_job.contact, description: @external_job.description, hiring_manager_id: @external_job.hiring_manager_id, job_id: @external_job.job_id }
    assert_redirected_to external_job_path(assigns(:external_job))
  end

  test "should destroy external_job" do
    assert_difference('ExternalJob.count', -1) do
      delete :destroy, id: @external_job
    end

    assert_redirected_to external_jobs_path
  end
end
