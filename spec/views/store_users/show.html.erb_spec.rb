require 'rails_helper'

RSpec.describe "store_users/show", type: :view do
  before(:each) do
    @store_user = assign(:store_user, StoreUser.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
