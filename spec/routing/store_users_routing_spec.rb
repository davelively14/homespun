require "rails_helper"

RSpec.describe StoreUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/store_users").to route_to("store_users#index")
    end

    it "routes to #new" do
      expect(:get => "/store_users/new").to route_to("store_users#new")
    end

    it "routes to #show" do
      expect(:get => "/store_users/1").to route_to("store_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/store_users/1/edit").to route_to("store_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/store_users").to route_to("store_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/store_users/1").to route_to("store_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/store_users/1").to route_to("store_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/store_users/1").to route_to("store_users#destroy", :id => "1")
    end

  end
end
