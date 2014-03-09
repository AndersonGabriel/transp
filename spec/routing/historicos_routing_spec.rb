require "spec_helper"

describe HistoricosController do
  describe "routing" do

    it "routes to #index" do
      get("/historicos").should route_to("historicos#index")
    end

    it "routes to #new" do
      get("/historicos/new").should route_to("historicos#new")
    end

    it "routes to #show" do
      get("/historicos/1").should route_to("historicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/historicos/1/edit").should route_to("historicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/historicos").should route_to("historicos#create")
    end

    it "routes to #update" do
      put("/historicos/1").should route_to("historicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/historicos/1").should route_to("historicos#destroy", :id => "1")
    end

  end
end
