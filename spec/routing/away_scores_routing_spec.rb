require "spec_helper"

describe AwayScoresController do
  describe "routing" do

    it "routes to #index" do
      get("/away_scores").should route_to("away_scores#index")
    end

    it "routes to #new" do
      get("/away_scores/new").should route_to("away_scores#new")
    end

    it "routes to #show" do
      get("/away_scores/1").should route_to("away_scores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/away_scores/1/edit").should route_to("away_scores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/away_scores").should route_to("away_scores#create")
    end

    it "routes to #update" do
      put("/away_scores/1").should route_to("away_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/away_scores/1").should route_to("away_scores#destroy", :id => "1")
    end

  end
end
