require 'rails_helper'

RSpec.describe "beerfacts/index", type: :view do
  before(:each) do
    assign(:beerfacts, [
      Beerfact.create!(
        :fact => "MyText"
      ),
      Beerfact.create!(
        :fact => "MyText"
      )
    ])
  end

  it "renders a list of beerfacts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
