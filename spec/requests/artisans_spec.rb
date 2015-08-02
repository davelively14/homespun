require 'rails_helper'

RSpec.describe "Artisans", type: :request do
  describe "GET /artisans" do
    it "works! (now write some real specs)" do
      get artisans_path
      expect(response).to have_http_status(200)
    end
  end
end
