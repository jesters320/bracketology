require 'spec_helper'

describe "away_scores/show" do
  before(:each) do
    @away_score = assign(:away_score, stub_model(AwayScore,
      :ones => 1,
      :display_order => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
