require 'rails_helper'

RSpec.describe "artisans/index", type: :view do
  before(:each) do
    assign(:artisans, [
      Artisan.create!(
        :role => "Role",
        :approved => false
      ),
      Artisan.create!(
        :role => "Role",
        :approved => false
      )
    ])
  end

  it "renders a list of artisans" do
    render
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
