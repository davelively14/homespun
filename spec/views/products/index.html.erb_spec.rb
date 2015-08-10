require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :store_id => 1,
        :name => "Name",
        :description => "MyText",
        :list_price => 1.5,
        :image_url => "Image Url",
        :mfger => "Mfger",
        :model => "Model",
        :in_stock => false
      ),
      Product.create!(
        :store_id => 1,
        :name => "Name",
        :description => "MyText",
        :list_price => 1.5,
        :image_url => "Image Url",
        :mfger => "Mfger",
        :model => "Model",
        :in_stock => false
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Mfger".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
