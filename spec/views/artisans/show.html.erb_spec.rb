require 'rails_helper'

RSpec.describe "artisans/show", type: :view do
  before(:each) do
    @artisan = assign(:artisan, Artisan.create!(
      :role => "Role",
      :approved => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/false/)
  end
end
