require 'spec_helper'

describe "home_scores/show" do
  before(:each) do
    @home_score = assign(:home_score, stub_model(HomeScore,
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
