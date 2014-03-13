require 'spec_helper'

describe "games/show" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :home_team => "Home Team",
      :away_team => "Away Team",
      :home_score => 1,
      :away_score => 2,
      :unique_identifier => "Unique Identifier"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Team/)
    rendered.should match(/Away Team/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Unique Identifier/)
  end
end
