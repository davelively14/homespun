require 'rails_helper'

RSpec.describe "artisans/edit", type: :view do
  before(:each) do
    @artisan = assign(:artisan, Artisan.create!(
      :role => "MyString",
      :approved => false
    ))
  end

  it "renders the edit artisan form" do
    render

    assert_select "form[action=?][method=?]", artisan_path(@artisan), "post" do

      assert_select "input#artisan_role[name=?]", "artisan[role]"

      assert_select "input#artisan_approved[name=?]", "artisan[approved]"
    end
  end
end
