require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :home_team => "MyString",
      :away_team => "MyString",
      :home_score => 1,
      :away_score => 1,
      :unique_identifier => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_path(@game), "post" do
      assert_select "input#game_home_team[name=?]", "game[home_team]"
      assert_select "input#game_away_team[name=?]", "game[away_team]"
      assert_select "input#game_home_score[name=?]", "game[home_score]"
      assert_select "input#game_away_score[name=?]", "game[away_score]"
      assert_select "input#game_unique_identifier[name=?]", "game[unique_identifier]"
    end
  end
end
