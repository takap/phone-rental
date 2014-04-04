require "spec_helper"

describe TerminalMastersController do
  describe "routing" do

    it "routes to #index" do
      get("/terminal_masters").should route_to("terminal_masters#index")
    end

    it "routes to #new" do
      get("/terminal_masters/new").should route_to("terminal_masters#new")
    end

    it "routes to #show" do
      get("/terminal_masters/1").should route_to("terminal_masters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/terminal_masters/1/edit").should route_to("terminal_masters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/terminal_masters").should route_to("terminal_masters#create")
    end

    it "routes to #update" do
      put("/terminal_masters/1").should route_to("terminal_masters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/terminal_masters/1").should route_to("terminal_masters#destroy", :id => "1")
    end

  end
end
