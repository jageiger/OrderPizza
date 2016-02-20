require 'test_helper'

class AppliedSizesControllerTest < ActionController::TestCase
  setup do
    @applied_size = applied_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_size" do
    assert_difference('AppliedSize.count') do
      post :create, applied_size: { cart_item_id: @applied_size.cart_item_id, item_size_id: @applied_size.item_size_id }
    end

    assert_redirected_to applied_size_path(assigns(:applied_size))
  end

  test "should show applied_size" do
    get :show, id: @applied_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_size
    assert_response :success
  end

  test "should update applied_size" do
    patch :update, id: @applied_size, applied_size: { cart_item_id: @applied_size.cart_item_id, item_size_id: @applied_size.item_size_id }
    assert_redirected_to applied_size_path(assigns(:applied_size))
  end

  test "should destroy applied_size" do
    assert_difference('AppliedSize.count', -1) do
      delete :destroy, id: @applied_size
    end

    assert_redirected_to applied_sizes_path
  end
end
