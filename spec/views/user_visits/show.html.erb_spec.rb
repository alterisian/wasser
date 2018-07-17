require 'rails_helper'

RSpec.describe "user_visits/show", type: :view do
  before(:each) do
    @user_visit = assign(:user_visit, UserVisit.create!(
      :user => nil,
      :lake => nil,
      :description => "MyText",
      :public => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
