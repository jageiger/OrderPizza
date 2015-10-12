require 'test_helper'

class ModifierGroupsControllerTest < ActionController::TestCase
  setup do
    @modifier_group = modifier_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modifier_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modifier_group" do
    assert_difference('ModifierGroup.count') do
      post :create, modifier_group: { name: @modifier_group.name }
    end

    assert_redirected_to modifier_group_path(assigns(:modifier_group))
  end

  test "should show modifier_group" do
    get :show, id: @modifier_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modifier_group
    assert_response :success
  end

  test "should update modifier_group" do
    patch :update, id: @modifier_group, modifier_group: { name: @modifier_group.name }
    assert_redirected_to modifier_group_path(assigns(:modifier_group))
  end

  test "should destroy modifier_group" do
    assert_difference('ModifierGroup.count', -1) do
      delete :destroy, id: @modifier_group
    end

    assert_redirected_to modifier_groups_path
  end
end
