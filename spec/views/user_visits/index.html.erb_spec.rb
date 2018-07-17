require 'rails_helper'

RSpec.describe "user_visits/index", type: :view do
  before(:each) do
    assign(:user_visits, [
      UserVisit.create!(
        :user => nil,
        :lake => nil,
        :description => "MyText",
        :public => false
      ),
      UserVisit.create!(
        :user => nil,
        :lake => nil,
        :description => "MyText",
        :public => false
      )
    ])
  end

  it "renders a list of user_visits" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
