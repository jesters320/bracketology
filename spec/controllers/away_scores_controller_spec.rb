require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AwayScoresController do

  # This should return the minimal set of attributes required to create a valid
  # AwayScore. As you add validations to AwayScore, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "ones" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AwayScoresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all away_scores as @away_scores" do
      away_score = AwayScore.create! valid_attributes
      get :index, {}, valid_session
      assigns(:away_scores).should eq([away_score])
    end
  end

  describe "GET show" do
    it "assigns the requested away_score as @away_score" do
      away_score = AwayScore.create! valid_attributes
      get :show, {:id => away_score.to_param}, valid_session
      assigns(:away_score).should eq(away_score)
    end
  end

  describe "GET new" do
    it "assigns a new away_score as @away_score" do
      get :new, {}, valid_session
      assigns(:away_score).should be_a_new(AwayScore)
    end
  end

  describe "GET edit" do
    it "assigns the requested away_score as @away_score" do
      away_score = AwayScore.create! valid_attributes
      get :edit, {:id => away_score.to_param}, valid_session
      assigns(:away_score).should eq(away_score)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AwayScore" do
        expect {
          post :create, {:away_score => valid_attributes}, valid_session
        }.to change(AwayScore, :count).by(1)
      end

      it "assigns a newly created away_score as @away_score" do
        post :create, {:away_score => valid_attributes}, valid_session
        assigns(:away_score).should be_a(AwayScore)
        assigns(:away_score).should be_persisted
      end

      it "redirects to the created away_score" do
        post :create, {:away_score => valid_attributes}, valid_session
        response.should redirect_to(AwayScore.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved away_score as @away_score" do
        # Trigger the behavior that occurs when invalid params are submitted
        AwayScore.any_instance.stub(:save).and_return(false)
        post :create, {:away_score => { "ones" => "invalid value" }}, valid_session
        assigns(:away_score).should be_a_new(AwayScore)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AwayScore.any_instance.stub(:save).and_return(false)
        post :create, {:away_score => { "ones" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested away_score" do
        away_score = AwayScore.create! valid_attributes
        # Assuming there are no other away_scores in the database, this
        # specifies that the AwayScore created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AwayScore.any_instance.should_receive(:update).with({ "ones" => "1" })
        put :update, {:id => away_score.to_param, :away_score => { "ones" => "1" }}, valid_session
      end

      it "assigns the requested away_score as @away_score" do
        away_score = AwayScore.create! valid_attributes
        put :update, {:id => away_score.to_param, :away_score => valid_attributes}, valid_session
        assigns(:away_score).should eq(away_score)
      end

      it "redirects to the away_score" do
        away_score = AwayScore.create! valid_attributes
        put :update, {:id => away_score.to_param, :away_score => valid_attributes}, valid_session
        response.should redirect_to(away_score)
      end
    end

    describe "with invalid params" do
      it "assigns the away_score as @away_score" do
        away_score = AwayScore.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AwayScore.any_instance.stub(:save).and_return(false)
        put :update, {:id => away_score.to_param, :away_score => { "ones" => "invalid value" }}, valid_session
        assigns(:away_score).should eq(away_score)
      end

      it "re-renders the 'edit' template" do
        away_score = AwayScore.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AwayScore.any_instance.stub(:save).and_return(false)
        put :update, {:id => away_score.to_param, :away_score => { "ones" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested away_score" do
      away_score = AwayScore.create! valid_attributes
      expect {
        delete :destroy, {:id => away_score.to_param}, valid_session
      }.to change(AwayScore, :count).by(-1)
    end

    it "redirects to the away_scores list" do
      away_score = AwayScore.create! valid_attributes
      delete :destroy, {:id => away_score.to_param}, valid_session
      response.should redirect_to(away_scores_url)
    end
  end

end
