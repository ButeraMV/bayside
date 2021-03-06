require 'rails_helper'

RSpec.describe "beers/edit", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :name => "MyString",
      :desc => "MyText",
      :flagship => false,
      :img_path => "MyString"
    ))
  end

  it "renders the edit beer form" do
    render

    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do

      assert_select "input[name=?]", "beer[name]"

      assert_select "textarea[name=?]", "beer[desc]"

      assert_select "input[name=?]", "beer[flagship]"

      assert_select "input[name=?]", "beer[img_path]"
    end
  end
end
