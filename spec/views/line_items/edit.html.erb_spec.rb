require 'rails_helper'

RSpec.describe "line_items/edit", type: :view do
  before(:each) do
    @line_item = assign(:line_item, LineItem.create!(
      :product_id => 1,
      :order_id => 1,
      :sales_price => "9.99",
      :quantity => 1
    ))
  end

  it "renders the edit line_item form" do
    render

    assert_select "form[action=?][method=?]", line_item_path(@line_item), "post" do

      assert_select "input#line_item_product_id[name=?]", "line_item[product_id]"

      assert_select "input#line_item_order_id[name=?]", "line_item[order_id]"

      assert_select "input#line_item_sales_price[name=?]", "line_item[sales_price]"

      assert_select "input#line_item_quantity[name=?]", "line_item[quantity]"
    end
  end
end
