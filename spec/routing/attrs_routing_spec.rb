require "spec_helper"

describe AttrsController do
  describe "routing" do

    it "routes to #index" do
      get("/attrs").should route_to("attrs#index")
    end

    it "routes to #new" do
      get("/attrs/new").should route_to("attrs#new")
    end

    it "routes to #show" do
      get("/attrs/1").should route_to("attrs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attrs/1/edit").should route_to("attrs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attrs").should route_to("attrs#create")
    end

    it "routes to #update" do
      put("/attrs/1").should route_to("attrs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attrs/1").should route_to("attrs#destroy", :id => "1")
    end

  end
end
