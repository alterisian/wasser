require 'rails_helper'

RSpec.describe "lake_views/index", type: :view do
  before(:each) do
    assign(:lake_views, [
      LakeView.create!(
        :tl_lat => 2.5,
        :tl_lng => 3.5,
        :br_lat => 4.5,
        :br_lng => 5.5,
        :lake => nil
      ),
      LakeView.create!(
        :tl_lat => 2.5,
        :tl_lng => 3.5,
        :br_lat => 4.5,
        :br_lng => 5.5,
        :lake => nil
      )
    ])
  end

  it "renders a list of lake_views" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
