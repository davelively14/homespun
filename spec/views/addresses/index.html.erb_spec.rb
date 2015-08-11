require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :user_id => 1,
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      ),
      Address.create!(
        :user_id => 1,
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
