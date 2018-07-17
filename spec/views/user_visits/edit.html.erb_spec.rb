require 'rails_helper'

RSpec.describe "user_visits/edit", type: :view do
  before(:each) do
    @user_visit = assign(:user_visit, UserVisit.create!(
      :user => nil,
      :lake => nil,
      :description => "MyText",
      :public => false
    ))
  end

  it "renders the edit user_visit form" do
    render

    assert_select "form[action=?][method=?]", user_visit_path(@user_visit), "post" do

      assert_select "input#user_visit_user_id[name=?]", "user_visit[user_id]"

      assert_select "input#user_visit_lake_id[name=?]", "user_visit[lake_id]"

      assert_select "textarea#user_visit_description[name=?]", "user_visit[description]"

      assert_select "input#user_visit_public[name=?]", "user_visit[public]"
    end
  end
end
