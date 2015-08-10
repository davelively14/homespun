require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :store_id => 1,
      :name => "MyString",
      :description => "MyText",
      :list_price => 1.5,
      :image_url => "MyString",
      :mfger => "MyString",
      :model => "MyString",
      :in_stock => false
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_store_id[name=?]", "product[store_id]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_list_price[name=?]", "product[list_price]"

      assert_select "input#product_image_url[name=?]", "product[image_url]"

      assert_select "input#product_mfger[name=?]", "product[mfger]"

      assert_select "input#product_model[name=?]", "product[model]"

      assert_select "input#product_in_stock[name=?]", "product[in_stock]"
    end
  end
end
