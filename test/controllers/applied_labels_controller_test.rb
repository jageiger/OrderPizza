require 'test_helper'

class AppliedLabelsControllerTest < ActionController::TestCase
  setup do
    @applied_label = applied_labels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_label" do
    assert_difference('AppliedLabel.count') do
      post :create, applied_label: { daily_special: @applied_label.daily_special, day: @applied_label.day, item_id: @applied_label.item_id, label_id: @applied_label.label_id }
    end

    assert_redirected_to applied_label_path(assigns(:applied_label))
  end

  test "should show applied_label" do
    get :show, id: @applied_label
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_label
    assert_response :success
  end

  test "should update applied_label" do
    patch :update, id: @applied_label, applied_label: { daily_special: @applied_label.daily_special, day: @applied_label.day, item_id: @applied_label.item_id, label_id: @applied_label.label_id }
    assert_redirected_to applied_label_path(assigns(:applied_label))
  end

  test "should destroy applied_label" do
    assert_difference('AppliedLabel.count', -1) do
      delete :destroy, id: @applied_label
    end

    assert_redirected_to applied_labels_path
  end
end
