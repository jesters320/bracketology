require "spec_helper"

describe HomeScoresController do
  describe "routing" do

    it "routes to #index" do
      get("/home_scores").should route_to("home_scores#index")
    end

    it "routes to #new" do
      get("/home_scores/new").should route_to("home_scores#new")
    end

    it "routes to #show" do
      get("/home_scores/1").should route_to("home_scores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/home_scores/1/edit").should route_to("home_scores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/home_scores").should route_to("home_scores#create")
    end

    it "routes to #update" do
      put("/home_scores/1").should route_to("home_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/home_scores/1").should route_to("home_scores#destroy", :id => "1")
    end

  end
end
