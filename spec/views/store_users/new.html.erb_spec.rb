require 'rails_helper'

RSpec.describe "store_users/new", type: :view do
  before(:each) do
    assign(:store_user, StoreUser.new())
  end

  it "renders new store_user form" do
    render

    assert_select "form[action=?][method=?]", store_users_path, "post" do
    end
  end
end
