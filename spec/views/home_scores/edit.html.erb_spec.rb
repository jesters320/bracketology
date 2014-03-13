require 'spec_helper'

describe "home_scores/edit" do
  before(:each) do
    @home_score = assign(:home_score, stub_model(HomeScore,
      :ones => 1,
      :display_order => 1
    ))
  end

  it "renders the edit home_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", home_score_path(@home_score), "post" do
      assert_select "input#home_score_ones[name=?]", "home_score[ones]"
      assert_select "input#home_score_display_order[name=?]", "home_score[display_order]"
    end
  end
end
