require "spec_helper"

describe ScreenDensitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/screen_densities").should route_to("screen_densities#index")
    end

    it "routes to #new" do
      get("/screen_densities/new").should route_to("screen_densities#new")
    end

    it "routes to #show" do
      get("/screen_densities/1").should route_to("screen_densities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/screen_densities/1/edit").should route_to("screen_densities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/screen_densities").should route_to("screen_densities#create")
    end

    it "routes to #update" do
      put("/screen_densities/1").should route_to("screen_densities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/screen_densities/1").should route_to("screen_densities#destroy", :id => "1")
    end

  end
end
