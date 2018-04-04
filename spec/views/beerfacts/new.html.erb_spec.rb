require 'rails_helper'

RSpec.describe "beerfacts/new", type: :view do
  before(:each) do
    assign(:beerfact, Beerfact.new(
      :fact => "MyText"
    ))
  end

  it "renders new beerfact form" do
    render

    assert_select "form[action=?][method=?]", beerfacts_path, "post" do

      assert_select "textarea[name=?]", "beerfact[fact]"
    end
  end
end
