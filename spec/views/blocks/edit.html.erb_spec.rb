require 'spec_helper'

describe "blocks/edit" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :user => nil,
      :home_score => nil,
      :away_score => nil
    ))
  end

  it "renders the edit block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", block_path(@block), "post" do
      assert_select "input#block_user[name=?]", "block[user]"
      assert_select "input#block_home_score[name=?]", "block[home_score]"
      assert_select "input#block_away_score[name=?]", "block[away_score]"
    end
  end
end
