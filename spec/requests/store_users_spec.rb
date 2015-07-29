require 'rails_helper'

RSpec.describe "StoreUsers", type: :request do
  describe "GET /store_users" do
    it "works! (now write some real specs)" do
      get store_users_path
      expect(response).to have_http_status(200)
    end
  end
end
