require 'rails_helper'

RSpec.describe "lake_views/edit", type: :view do
  before(:each) do
    @lake_view = assign(:lake_view, LakeView.create!(
      :tl_lat => 1.5,
      :tl_lng => 1.5,
      :br_lat => 1.5,
      :br_lng => 1.5,
      :lake => nil
    ))
  end

  it "renders the edit lake_view form" do
    render

    assert_select "form[action=?][method=?]", lake_view_path(@lake_view), "post" do

      assert_select "input#lake_view_tl_lat[name=?]", "lake_view[tl_lat]"

      assert_select "input#lake_view_tl_lng[name=?]", "lake_view[tl_lng]"

      assert_select "input#lake_view_br_lat[name=?]", "lake_view[br_lat]"

      assert_select "input#lake_view_br_lng[name=?]", "lake_view[br_lng]"

      assert_select "input#lake_view_lake_id[name=?]", "lake_view[lake_id]"
    end
  end
end
