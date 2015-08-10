require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :store_id => 1,
      :name => "Name",
      :description => "MyText",
      :list_price => 1.5,
      :image_url => "Image Url",
      :mfger => "Mfger",
      :model => "Model",
      :in_stock => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Mfger/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/false/)
  end
end
