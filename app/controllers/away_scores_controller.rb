class AwayScoresController < ApplicationController
  before_action :set_away_score, only: [:show, :edit, :update, :destroy]
  	before_action :signed_in_user

  # GET /away_scores
  # GET /away_scores.json
  def index
    @away_scores = AwayScore.all
  end

  # GET /away_scores/1
  # GET /away_scores/1.json
  def show
  end

  # GET /away_scores/new
  def new
    @away_score = AwayScore.new
  end

  # GET /away_scores/1/edit
  def edit
  end

  # POST /away_scores
  # POST /away_scores.json
  def create
    @away_score = AwayScore.new(away_score_params)

    respond_to do |format|
      if @away_score.save
        format.html { redirect_to @away_score, notice: 'Away score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @away_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @away_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /away_scores/1
  # PATCH/PUT /away_scores/1.json
  def update
    respond_to do |format|
      if @away_score.update(away_score_params)
        format.html { redirect_to @away_score, notice: 'Away score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @away_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /away_scores/1
  # DELETE /away_scores/1.json
  def destroy
    @away_score.destroy
    respond_to do |format|
      format.html { redirect_to away_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_away_score
      @away_score = AwayScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def away_score_params
      params.require(:away_score).permit(:ones, :display_order)
    end
end
