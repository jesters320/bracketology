require 'spec_helper'

describe "away_scores/new" do
  before(:each) do
    assign(:away_score, stub_model(AwayScore,
      :ones => 1,
      :display_order => 1
    ).as_new_record)
  end

  it "renders new away_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", away_scores_path, "post" do
      assert_select "input#away_score_ones[name=?]", "away_score[ones]"
      assert_select "input#away_score_display_order[name=?]", "away_score[display_order]"
    end
  end
end
