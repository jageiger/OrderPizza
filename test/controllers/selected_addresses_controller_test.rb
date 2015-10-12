require 'test_helper'

class SelectedAddressesControllerTest < ActionController::TestCase
  setup do
    @selected_address = selected_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selected_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected_address" do
    assert_difference('SelectedAddress.count') do
      post :create, selected_address: { address_id: @selected_address.address_id, order_id: @selected_address.order_id, user_id: @selected_address.user_id }
    end

    assert_redirected_to selected_address_path(assigns(:selected_address))
  end

  test "should show selected_address" do
    get :show, id: @selected_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected_address
    assert_response :success
  end

  test "should update selected_address" do
    patch :update, id: @selected_address, selected_address: { address_id: @selected_address.address_id, order_id: @selected_address.order_id, user_id: @selected_address.user_id }
    assert_redirected_to selected_address_path(assigns(:selected_address))
  end

  test "should destroy selected_address" do
    assert_difference('SelectedAddress.count', -1) do
      delete :destroy, id: @selected_address
    end

    assert_redirected_to selected_addresses_path
  end
end
