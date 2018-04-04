require 'rails_helper'

RSpec.describe "beers/index", type: :view do
  before(:each) do
    assign(:beers, [
      Beer.create!(
        :name => "Name",
        :desc => "MyText",
        :flagship => false,
        :img_path => "Img Path"
      ),
      Beer.create!(
        :name => "Name",
        :desc => "MyText",
        :flagship => false,
        :img_path => "Img Path"
      )
    ])
  end

  it "renders a list of beers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Img Path".to_s, :count => 2
  end
end
