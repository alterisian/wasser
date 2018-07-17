require 'rails_helper'

RSpec.describe "lake_views/show", type: :view do
  before(:each) do
    @lake_view = assign(:lake_view, LakeView.create!(
      :tl_lat => 2.5,
      :tl_lng => 3.5,
      :br_lat => 4.5,
      :br_lng => 5.5,
      :lake => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(//)
  end
end
