require 'rails_helper'

RSpec.describe "beerfacts/edit", type: :view do
  before(:each) do
    @beerfact = assign(:beerfact, Beerfact.create!(
      :fact => "MyText"
    ))
  end

  it "renders the edit beerfact form" do
    render

    assert_select "form[action=?][method=?]", beerfact_path(@beerfact), "post" do

      assert_select "textarea[name=?]", "beerfact[fact]"
    end
  end
end
