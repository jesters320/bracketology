require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :home_team => "Home Team",
        :away_team => "Away Team",
        :home_score => 1,
        :away_score => 2,
        :unique_identifier => "Unique Identifier"
      ),
      stub_model(Game,
        :home_team => "Home Team",
        :away_team => "Away Team",
        :home_score => 1,
        :away_score => 2,
        :unique_identifier => "Unique Identifier"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Team".to_s, :count => 2
    assert_select "tr>td", :text => "Away Team".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Unique Identifier".to_s, :count => 2
  end
end
