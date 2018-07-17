require 'rails_helper'

RSpec.describe "lakes/edit", type: :view do
  before(:each) do
    @lake = assign(:lake, Lake.create!(
      :name => "MyString",
      :description => "MyText",
      :active => false,
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders the edit lake form" do
    render

    assert_select "form[action=?][method=?]", lake_path(@lake), "post" do

      assert_select "input#lake_name[name=?]", "lake[name]"

      assert_select "textarea#lake_description[name=?]", "lake[description]"

      assert_select "input#lake_active[name=?]", "lake[active]"

      assert_select "input#lake_lat[name=?]", "lake[lat]"

      assert_select "input#lake_lng[name=?]", "lake[lng]"
    end
  end
end
