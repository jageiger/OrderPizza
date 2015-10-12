require 'test_helper'

class SelectedModifiersControllerTest < ActionController::TestCase
  setup do
    @selected_modifier = selected_modifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selected_modifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected_modifier" do
    assert_difference('SelectedModifier.count') do
      post :create, selected_modifier: { cart_item_id: @selected_modifier.cart_item_id, item_id: @selected_modifier.item_id, modifier_id: @selected_modifier.modifier_id }
    end

    assert_redirected_to selected_modifier_path(assigns(:selected_modifier))
  end

  test "should show selected_modifier" do
    get :show, id: @selected_modifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected_modifier
    assert_response :success
  end

  test "should update selected_modifier" do
    patch :update, id: @selected_modifier, selected_modifier: { cart_item_id: @selected_modifier.cart_item_id, item_id: @selected_modifier.item_id, modifier_id: @selected_modifier.modifier_id }
    assert_redirected_to selected_modifier_path(assigns(:selected_modifier))
  end

  test "should destroy selected_modifier" do
    assert_difference('SelectedModifier.count', -1) do
      delete :destroy, id: @selected_modifier
    end

    assert_redirected_to selected_modifiers_path
  end
end
