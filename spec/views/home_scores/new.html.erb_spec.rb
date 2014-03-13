require 'spec_helper'

describe "home_scores/new" do
  before(:each) do
    assign(:home_score, stub_model(HomeScore,
      :ones => 1,
      :display_order => 1
    ).as_new_record)
  end

  it "renders new home_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", home_scores_path, "post" do
      assert_select "input#home_score_ones[name=?]", "home_score[ones]"
      assert_select "input#home_score_display_order[name=?]", "home_score[display_order]"
    end
  end
end
