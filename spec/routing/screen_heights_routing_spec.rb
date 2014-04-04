require "spec_helper"

describe ScreenHeightsController do
  describe "routing" do

    it "routes to #index" do
      get("/screen_heights").should route_to("screen_heights#index")
    end

    it "routes to #new" do
      get("/screen_heights/new").should route_to("screen_heights#new")
    end

    it "routes to #show" do
      get("/screen_heights/1").should route_to("screen_heights#show", :id => "1")
    end

    it "routes to #edit" do
      get("/screen_heights/1/edit").should route_to("screen_heights#edit", :id => "1")
    end

    it "routes to #create" do
      post("/screen_heights").should route_to("screen_heights#create")
    end

    it "routes to #update" do
      put("/screen_heights/1").should route_to("screen_heights#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/screen_heights/1").should route_to("screen_heights#destroy", :id => "1")
    end

  end
end
