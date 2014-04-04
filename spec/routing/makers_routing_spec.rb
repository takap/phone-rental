require "spec_helper"

describe MakersController do
  describe "routing" do

    it "routes to #index" do
      get("/makers").should route_to("makers#index")
    end

    it "routes to #new" do
      get("/makers/new").should route_to("makers#new")
    end

    it "routes to #show" do
      get("/makers/1").should route_to("makers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/makers/1/edit").should route_to("makers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/makers").should route_to("makers#create")
    end

    it "routes to #update" do
      put("/makers/1").should route_to("makers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/makers/1").should route_to("makers#destroy", :id => "1")
    end

  end
end
