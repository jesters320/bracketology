require 'spec_helper'

describe "blocks/index" do
  before(:each) do
    assign(:blocks, [
      stub_model(Block,
        :user => nil,
        :home_score => nil,
        :away_score => nil
      ),
      stub_model(Block,
        :user => nil,
        :home_score => nil,
        :away_score => nil
      )
    ])
  end

  it "renders a list of blocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
