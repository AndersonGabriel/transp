require "spec_helper"

describe LojasController do
  describe "routing" do

    it "routes to #index" do
      get("/lojas").should route_to("lojas#index")
    end

    it "routes to #new" do
      get("/lojas/new").should route_to("lojas#new")
    end

    it "routes to #show" do
      get("/lojas/1").should route_to("lojas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lojas/1/edit").should route_to("lojas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lojas").should route_to("lojas#create")
    end

    it "routes to #update" do
      put("/lojas/1").should route_to("lojas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lojas/1").should route_to("lojas#destroy", :id => "1")
    end

  end
end
