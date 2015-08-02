require 'rails_helper'

RSpec.describe "artisans/new", type: :view do
  before(:each) do
    assign(:artisan, Artisan.new(
      :role => "MyString",
      :approved => false
    ))
  end

  it "renders new artisan form" do
    render

    assert_select "form[action=?][method=?]", artisans_path, "post" do

      assert_select "input#artisan_role[name=?]", "artisan[role]"

      assert_select "input#artisan_approved[name=?]", "artisan[approved]"
    end
  end
end
