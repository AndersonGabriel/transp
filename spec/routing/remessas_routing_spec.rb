require "spec_helper"

describe RemessasController do
  describe "routing" do

    it "routes to #index" do
      get("/remessas").should route_to("remessas#index")
    end

    it "routes to #new" do
      get("/remessas/new").should route_to("remessas#new")
    end

    it "routes to #show" do
      get("/remessas/1").should route_to("remessas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/remessas/1/edit").should route_to("remessas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/remessas").should route_to("remessas#create")
    end

    it "routes to #update" do
      put("/remessas/1").should route_to("remessas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/remessas/1").should route_to("remessas#destroy", :id => "1")
    end

  end
end
