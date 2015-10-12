require 'test_helper'

class GroupedModifiersControllerTest < ActionController::TestCase
  setup do
    @grouped_modifier = grouped_modifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grouped_modifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grouped_modifier" do
    assert_difference('GroupedModifier.count') do
      post :create, grouped_modifier: { modifier_group_id: @grouped_modifier.modifier_group_id, modifier_id: @grouped_modifier.modifier_id }
    end

    assert_redirected_to grouped_modifier_path(assigns(:grouped_modifier))
  end

  test "should show grouped_modifier" do
    get :show, id: @grouped_modifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grouped_modifier
    assert_response :success
  end

  test "should update grouped_modifier" do
    patch :update, id: @grouped_modifier, grouped_modifier: { modifier_group_id: @grouped_modifier.modifier_group_id, modifier_id: @grouped_modifier.modifier_id }
    assert_redirected_to grouped_modifier_path(assigns(:grouped_modifier))
  end

  test "should destroy grouped_modifier" do
    assert_difference('GroupedModifier.count', -1) do
      delete :destroy, id: @grouped_modifier
    end

    assert_redirected_to grouped_modifiers_path
  end
end
