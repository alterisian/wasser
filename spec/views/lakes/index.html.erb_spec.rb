require 'rails_helper'

RSpec.describe "lakes/index", type: :view do
  before(:each) do
    assign(:lakes, [
      Lake.create!(
        :name => "Name",
        :description => "MyText",
        :active => false,
        :lat => 2.5,
        :lng => 3.5
      ),
      Lake.create!(
        :name => "Name",
        :description => "MyText",
        :active => false,
        :lat => 2.5,
        :lng => 3.5
      )
    ])
  end

  it "renders a list of lakes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
