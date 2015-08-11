require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        :product_id => 1,
        :order_id => 2,
        :sales_price => "9.99",
        :quantity => 3
      ),
      LineItem.create!(
        :product_id => 1,
        :order_id => 2,
        :sales_price => "9.99",
        :quantity => 3
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
