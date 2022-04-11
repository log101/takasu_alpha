require "test_helper"

class TradeItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_item = trade_items(:one)
  end

  test "should get index" do
    get trade_items_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_item_url
    assert_response :success
  end

  test "should create trade_item" do
    assert_difference("TradeItem.count") do
      post trade_items_url, params: { trade_item: { manga_id: @trade_item.manga_id, trade_id: @trade_item.trade_id } }
    end

    assert_redirected_to trade_item_url(TradeItem.last)
  end

  test "should show trade_item" do
    get trade_item_url(@trade_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_item_url(@trade_item)
    assert_response :success
  end

  test "should update trade_item" do
    patch trade_item_url(@trade_item), params: { trade_item: { manga_id: @trade_item.manga_id, trade_id: @trade_item.trade_id } }
    assert_redirected_to trade_item_url(@trade_item)
  end

  test "should destroy trade_item" do
    assert_difference("TradeItem.count", -1) do
      delete trade_item_url(@trade_item)
    end

    assert_redirected_to trade_items_url
  end
end
