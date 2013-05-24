require 'test_helper'

class AgencyClientsControllerTest < ActionController::TestCase
  setup do
    @agency_client = agency_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agency_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency_client" do
    assert_difference('AgencyClient.count') do
      post :create, agency_client: { agency_id: @agency_client.agency_id, client_id: @agency_client.client_id }
    end

    assert_redirected_to agency_client_path(assigns(:agency_client))
  end

  test "should show agency_client" do
    get :show, id: @agency_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency_client
    assert_response :success
  end

  test "should update agency_client" do
    put :update, id: @agency_client, agency_client: { agency_id: @agency_client.agency_id, client_id: @agency_client.client_id }
    assert_redirected_to agency_client_path(assigns(:agency_client))
  end

  test "should destroy agency_client" do
    assert_difference('AgencyClient.count', -1) do
      delete :destroy, id: @agency_client
    end

    assert_redirected_to agency_clients_path
  end
end
