class HomeScoresController < ApplicationController
  before_action :set_home_score, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /home_scores
  # GET /home_scores.json
  def index
    @home_scores = HomeScore.all
  end

  # GET /home_scores/1
  # GET /home_scores/1.json
  def show
  end

  # GET /home_scores/new
  def new
    @home_score = HomeScore.new
  end

  # GET /home_scores/1/edit
  def edit
  end

  # POST /home_scores
  # POST /home_scores.json
  def create
    @home_score = HomeScore.new(home_score_params)

    respond_to do |format|
      if @home_score.save
        format.html { redirect_to @home_score, notice: 'Home score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @home_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @home_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_scores/1
  # PATCH/PUT /home_scores/1.json
  def update
    respond_to do |format|
      if @home_score.update(home_score_params)
        format.html { redirect_to @home_score, notice: 'Home score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_scores/1
  # DELETE /home_scores/1.json
  def destroy
    @home_score.destroy
    respond_to do |format|
      format.html { redirect_to home_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_score
      @home_score = HomeScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_score_params
      params.require(:home_score).permit(:ones, :display_order)
    end
end
