require "rails_helper"

RSpec.describe ArtisansController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/artisans").to route_to("artisans#index")
    end

    it "routes to #new" do
      expect(:get => "/artisans/new").to route_to("artisans#new")
    end

    it "routes to #show" do
      expect(:get => "/artisans/1").to route_to("artisans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/artisans/1/edit").to route_to("artisans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/artisans").to route_to("artisans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/artisans/1").to route_to("artisans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/artisans/1").to route_to("artisans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/artisans/1").to route_to("artisans#destroy", :id => "1")
    end

  end
end
