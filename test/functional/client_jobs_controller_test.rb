require 'test_helper'

class ClientJobsControllerTest < ActionController::TestCase
  setup do
    @client_job = client_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_job" do
    assert_difference('ClientJob.count') do
      post :create, client_job: { client_id: @client_job.client_id, job_id: @client_job.job_id }
    end

    assert_redirected_to client_job_path(assigns(:client_job))
  end

  test "should show client_job" do
    get :show, id: @client_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_job
    assert_response :success
  end

  test "should update client_job" do
    put :update, id: @client_job, client_job: { client_id: @client_job.client_id, job_id: @client_job.job_id }
    assert_redirected_to client_job_path(assigns(:client_job))
  end

  test "should destroy client_job" do
    assert_difference('ClientJob.count', -1) do
      delete :destroy, id: @client_job
    end

    assert_redirected_to client_jobs_path
  end
end
