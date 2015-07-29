require 'rails_helper'

RSpec.describe "store_users/edit", type: :view do
  before(:each) do
    @store_user = assign(:store_user, StoreUser.create!())
  end

  it "renders the edit store_user form" do
    render

    assert_select "form[action=?][method=?]", store_user_path(@store_user), "post" do
    end
  end
end
