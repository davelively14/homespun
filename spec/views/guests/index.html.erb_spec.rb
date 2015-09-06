require 'rails_helper'

RSpec.describe "guests/index", type: :view do
  before(:each) do
    assign(:guests, [
      Guest.create!(
        :email => "Email",
        :address_id => 1
      ),
      Guest.create!(
        :email => "Email",
        :address_id => 1
      )
    ])
  end

  it "renders a list of guests" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
