require 'spec_helper'

describe "home_scores/index" do
  before(:each) do
    assign(:home_scores, [
      stub_model(HomeScore,
        :ones => 1,
        :display_order => 2
      ),
      stub_model(HomeScore,
        :ones => 1,
        :display_order => 2
      )
    ])
  end

  it "renders a list of home_scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
