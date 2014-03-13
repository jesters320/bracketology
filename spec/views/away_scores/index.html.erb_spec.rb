require 'spec_helper'

describe "away_scores/index" do
  before(:each) do
    assign(:away_scores, [
      stub_model(AwayScore,
        :ones => 1,
        :display_order => 2
      ),
      stub_model(AwayScore,
        :ones => 1,
        :display_order => 2
      )
    ])
  end

  it "renders a list of away_scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
