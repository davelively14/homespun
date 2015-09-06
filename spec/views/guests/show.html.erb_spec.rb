require 'rails_helper'

RSpec.describe "guests/show", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :email => "Email",
      :address_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
  end
end
