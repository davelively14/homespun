require 'rails_helper'

RSpec.describe "store_users/index", type: :view do
  before(:each) do
    assign(:store_users, [
      StoreUser.create!(),
      StoreUser.create!()
    ])
  end

  it "renders a list of store_users" do
    render
  end
end
