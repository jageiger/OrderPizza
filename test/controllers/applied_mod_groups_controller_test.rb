require 'test_helper'

class AppliedModGroupsControllerTest < ActionController::TestCase
  setup do
    @applied_mod_group = applied_mod_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_mod_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_mod_group" do
    assert_difference('AppliedModGroup.count') do
      post :create, applied_mod_group: { item_id: @applied_mod_group.item_id, modifier_group_id: @applied_mod_group.modifier_group_id }
    end

    assert_redirected_to applied_mod_group_path(assigns(:applied_mod_group))
  end

  test "should show applied_mod_group" do
    get :show, id: @applied_mod_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_mod_group
    assert_response :success
  end

  test "should update applied_mod_group" do
    patch :update, id: @applied_mod_group, applied_mod_group: { item_id: @applied_mod_group.item_id, modifier_group_id: @applied_mod_group.modifier_group_id }
    assert_redirected_to applied_mod_group_path(assigns(:applied_mod_group))
  end

  test "should destroy applied_mod_group" do
    assert_difference('AppliedModGroup.count', -1) do
      delete :destroy, id: @applied_mod_group
    end

    assert_redirected_to applied_mod_groups_path
  end
end
