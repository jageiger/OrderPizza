require 'test_helper'

class ItemSizesControllerTest < ActionController::TestCase
  setup do
    @item_size = item_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_size" do
    assert_difference('ItemSize.count') do
      post :create, item_size: { extras: @item_size.extras, item_id: @item_size.item_id, name: @item_size.name, price: @item_size.price, row_order: @item_size.row_order }
    end

    assert_redirected_to item_size_path(assigns(:item_size))
  end

  test "should show item_size" do
    get :show, id: @item_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_size
    assert_response :success
  end

  test "should update item_size" do
    patch :update, id: @item_size, item_size: { extras: @item_size.extras, item_id: @item_size.item_id, name: @item_size.name, price: @item_size.price, row_order: @item_size.row_order }
    assert_redirected_to item_size_path(assigns(:item_size))
  end

  test "should destroy item_size" do
    assert_difference('ItemSize.count', -1) do
      delete :destroy, id: @item_size
    end

    assert_redirected_to item_sizes_path
  end
end
