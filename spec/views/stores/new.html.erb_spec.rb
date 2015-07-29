require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      :name => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input#store_name[name=?]", "store[name]"

      assert_select "textarea#store_description[name=?]", "store[description]"

      assert_select "input#store_slug[name=?]", "store[slug]"
    end
  end
end
