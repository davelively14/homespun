require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :user_id => 1,
      :street1 => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_user_id[name=?]", "address[user_id]"

      assert_select "input#address_street1[name=?]", "address[street1]"

      assert_select "input#address_street2[name=?]", "address[street2]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_zip[name=?]", "address[zip]"
    end
  end
end
