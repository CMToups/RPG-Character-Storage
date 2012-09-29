require "spec_helper"

describe MagicItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/magic_items").should route_to("magic_items#index")
    end

    it "routes to #new" do
      get("/magic_items/new").should route_to("magic_items#new")
    end

    it "routes to #show" do
      get("/magic_items/1").should route_to("magic_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/magic_items/1/edit").should route_to("magic_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/magic_items").should route_to("magic_items#create")
    end

    it "routes to #update" do
      put("/magic_items/1").should route_to("magic_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/magic_items/1").should route_to("magic_items#destroy", :id => "1")
    end

  end
end
