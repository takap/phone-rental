require "spec_helper"

describe ScreenInchesController do
  describe "routing" do

    it "routes to #index" do
      get("/screen_inches").should route_to("screen_inches#index")
    end

    it "routes to #new" do
      get("/screen_inches/new").should route_to("screen_inches#new")
    end

    it "routes to #show" do
      get("/screen_inches/1").should route_to("screen_inches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/screen_inches/1/edit").should route_to("screen_inches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/screen_inches").should route_to("screen_inches#create")
    end

    it "routes to #update" do
      put("/screen_inches/1").should route_to("screen_inches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/screen_inches/1").should route_to("screen_inches#destroy", :id => "1")
    end

  end
end
