require 'scraper.rb'

class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, except: [:index, :show]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
	@game1 = @games.find_by(game_number: 1)
	@game2 = @games.find_by(game_number: 2)
	@game3 = @games.find_by(game_number: 3)
	@game4 = @games.find_by(game_number: 4)
	@game5 = @games.find_by(game_number: 5)
	@game6 = @games.find_by(game_number: 6)
	@game7 = @games.find_by(game_number: 7)
	@game8 = @games.find_by(game_number: 8)
	@game9 = @games.find_by(game_number: 9)
	@game10 = @games.find_by(game_number: 10)
	@game11 = @games.find_by(game_number: 11)
	@game12 = @games.find_by(game_number: 12)
	@game13 = @games.find_by(game_number: 13)
	@game14 = @games.find_by(game_number: 14)
	@game15 = @games.find_by(game_number: 15)
	@game16 = @games.find_by(game_number: 16)
	
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
	scraper = Scraper.new("http://scores.espn.go.com/ncb/boxscore?gameId=" + @game.unique_identifier)
	@game.home_score = scraper.get_home_score
	@game.away_score = scraper.get_visitor_score
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game }
      else
        format.html { render action: 'new' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:home_id, :away_id, :home_score, :away_score, :unique_identifier, :game_number)
    end
end
