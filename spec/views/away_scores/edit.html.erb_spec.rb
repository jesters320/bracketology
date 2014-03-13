require 'spec_helper'

describe "away_scores/edit" do
  before(:each) do
    @away_score = assign(:away_score, stub_model(AwayScore,
      :ones => 1,
      :display_order => 1
    ))
  end

  it "renders the edit away_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", away_score_path(@away_score), "post" do
      assert_select "input#away_score_ones[name=?]", "away_score[ones]"
      assert_select "input#away_score_display_order[name=?]", "away_score[display_order]"
    end
  end
end
