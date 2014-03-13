require 'spec_helper'

describe "blocks/show" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :user => nil,
      :home_score => nil,
      :away_score => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
