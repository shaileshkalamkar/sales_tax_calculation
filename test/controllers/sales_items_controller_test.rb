require 'test_helper'

class SalesItemsControllerTest < ActionController::TestCase
  setup do
    @sales_item = sales_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_item" do
    assert_difference('SalesItem.count') do
      post :create, sales_item: { is_imported: @sales_item.is_imported, name: @sales_item.name, price: @sales_item.price, sales_item_type_id: @sales_item.sales_item_type_id }
    end

    assert_redirected_to sales_item_path(assigns(:sales_item))
  end

  test "should show sales_item" do
    get :show, id: @sales_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_item
    assert_response :success
  end

  test "should update sales_item" do
    patch :update, id: @sales_item, sales_item: { is_imported: @sales_item.is_imported, name: @sales_item.name, price: @sales_item.price, sales_item_type_id: @sales_item.sales_item_type_id }
    assert_redirected_to sales_item_path(assigns(:sales_item))
  end

  test "should destroy sales_item" do
    assert_difference('SalesItem.count', -1) do
      delete :destroy, id: @sales_item
    end

    assert_redirected_to sales_items_path
  end
end
