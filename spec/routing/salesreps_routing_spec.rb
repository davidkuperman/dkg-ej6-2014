require "spec_helper"

describe SalesrepsController do
  describe "routing" do

    it "routes to #index" do
      get("/salesreps").should route_to("salesreps#index")
    end

    it "routes to #new" do
      get("/salesreps/new").should route_to("salesreps#new")
    end

    it "routes to #show" do
      get("/salesreps/1").should route_to("salesreps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/salesreps/1/edit").should route_to("salesreps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/salesreps").should route_to("salesreps#create")
    end

    it "routes to #update" do
      put("/salesreps/1").should route_to("salesreps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/salesreps/1").should route_to("salesreps#destroy", :id => "1")
    end

  end
end
