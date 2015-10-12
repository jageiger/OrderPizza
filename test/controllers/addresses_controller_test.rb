require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address_four: @address.address_four, address_one: @address.address_one, address_three: @address.address_three, address_two: @address.address_two, apartment: @address.apartment, apartment_number: @address.apartment_number, building_number: @address.building_number, gate_code: @address.gate_code, special_instructions: @address.special_instructions, user_id: @address.user_id, zipcode: @address.zipcode }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { address_four: @address.address_four, address_one: @address.address_one, address_three: @address.address_three, address_two: @address.address_two, apartment: @address.apartment, apartment_number: @address.apartment_number, building_number: @address.building_number, gate_code: @address.gate_code, special_instructions: @address.special_instructions, user_id: @address.user_id, zipcode: @address.zipcode }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
