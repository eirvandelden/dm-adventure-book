require "test_helper"

class ItemsTest < ActionDispatch::IntegrationTest
  setup do
    @item = Item.create!(name: "Longsword")
  end

  test "the index page's Destroy link uses Turbo, not rails-ujs, to send DELETE" do
    get "/items"

    assert_select "a[href=?][data-turbo-method=delete]", item_path(@item)
  end

  test "destroying an item removes it" do
    assert_difference("Item.count", -1) do
      delete item_path(@item)
    end
  end

  test "creating an item through the form keeps its item type" do
    post items_path, params: { item: { name: "Dagger", item_type: "Weapon" } }

    assert_equal "Weapon", Item.last.item_type
  end

  test "updating an item through the form keeps its item type" do
    patch item_path(@item), params: { item: { item_type: "Weapon" } }

    assert_equal "Weapon", @item.reload.item_type
  end
end
