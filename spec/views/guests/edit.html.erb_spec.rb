require 'rails_helper'

RSpec.describe "guests/edit", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :email => "MyString",
      :address_id => 1
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_email[name=?]", "guest[email]"

      assert_select "input#guest_address_id[name=?]", "guest[address_id]"
    end
  end
end
