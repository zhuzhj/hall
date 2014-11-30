require "spec_helper"

describe BologListsController do
  describe "routing" do

    it "routes to #index" do
      get("/bolog_lists").should route_to("bolog_lists#index")
    end

    it "routes to #new" do
      get("/bolog_lists/new").should route_to("bolog_lists#new")
    end

    it "routes to #show" do
      get("/bolog_lists/1").should route_to("bolog_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bolog_lists/1/edit").should route_to("bolog_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bolog_lists").should route_to("bolog_lists#create")
    end

    it "routes to #update" do
      put("/bolog_lists/1").should route_to("bolog_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bolog_lists/1").should route_to("bolog_lists#destroy", :id => "1")
    end

  end
end
