require 'rails_helper'

RSpec.describe "lakes/show", type: :view do
  before(:each) do
    @lake = assign(:lake, Lake.create!(
      :name => "Name",
      :description => "MyText",
      :active => false,
      :lat => 2.5,
      :lng => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
