require 'test_helper'

class SelectedSizesControllerTest < ActionController::TestCase
  setup do
    @selected_size = selected_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selected_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected_size" do
    assert_difference('SelectedSize.count') do
      post :create, selected_size: { cart_item_id: @selected_size.cart_item_id, item_size_id: @selected_size.item_size_id }
    end

    assert_redirected_to selected_size_path(assigns(:selected_size))
  end

  test "should show selected_size" do
    get :show, id: @selected_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected_size
    assert_response :success
  end

  test "should update selected_size" do
    patch :update, id: @selected_size, selected_size: { cart_item_id: @selected_size.cart_item_id, item_size_id: @selected_size.item_size_id }
    assert_redirected_to selected_size_path(assigns(:selected_size))
  end

  test "should destroy selected_size" do
    assert_difference('SelectedSize.count', -1) do
      delete :destroy, id: @selected_size
    end

    assert_redirected_to selected_sizes_path
  end
end
