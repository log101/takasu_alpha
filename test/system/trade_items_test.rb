require "application_system_test_case"

class TradeItemsTest < ApplicationSystemTestCase
  setup do
    @trade_item = trade_items(:one)
  end

  test "visiting the index" do
    visit trade_items_url
    assert_selector "h1", text: "Trade items"
  end

  test "should create trade item" do
    visit trade_items_url
    click_on "New trade item"

    fill_in "Manga", with: @trade_item.manga_id
    fill_in "Trade", with: @trade_item.trade_id
    click_on "Create Trade item"

    assert_text "Trade item was successfully created"
    click_on "Back"
  end

  test "should update Trade item" do
    visit trade_item_url(@trade_item)
    click_on "Edit this trade item", match: :first

    fill_in "Manga", with: @trade_item.manga_id
    fill_in "Trade", with: @trade_item.trade_id
    click_on "Update Trade item"

    assert_text "Trade item was successfully updated"
    click_on "Back"
  end

  test "should destroy Trade item" do
    visit trade_item_url(@trade_item)
    click_on "Destroy this trade item", match: :first

    assert_text "Trade item was successfully destroyed"
  end
end
