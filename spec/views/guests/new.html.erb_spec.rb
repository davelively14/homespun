require 'rails_helper'

RSpec.describe "guests/new", type: :view do
  before(:each) do
    assign(:guest, Guest.new(
      :email => "MyString",
      :address_id => 1
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_email[name=?]", "guest[email]"

      assert_select "input#guest_address_id[name=?]", "guest[address_id]"
    end
  end
end
