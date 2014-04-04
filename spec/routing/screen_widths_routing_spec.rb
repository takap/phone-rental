require "spec_helper"

describe ScreenWidthsController do
  describe "routing" do

    it "routes to #index" do
      get("/screen_widths").should route_to("screen_widths#index")
    end

    it "routes to #new" do
      get("/screen_widths/new").should route_to("screen_widths#new")
    end

    it "routes to #show" do
      get("/screen_widths/1").should route_to("screen_widths#show", :id => "1")
    end

    it "routes to #edit" do
      get("/screen_widths/1/edit").should route_to("screen_widths#edit", :id => "1")
    end

    it "routes to #create" do
      post("/screen_widths").should route_to("screen_widths#create")
    end

    it "routes to #update" do
      put("/screen_widths/1").should route_to("screen_widths#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/screen_widths/1").should route_to("screen_widths#destroy", :id => "1")
    end

  end
end
