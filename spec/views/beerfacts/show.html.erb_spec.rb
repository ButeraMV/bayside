require 'rails_helper'

RSpec.describe "beerfacts/show", type: :view do
  before(:each) do
    @beerfact = assign(:beerfact, Beerfact.create!(
      :fact => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
