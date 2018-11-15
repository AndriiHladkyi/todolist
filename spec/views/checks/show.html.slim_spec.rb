require 'rails_helper'

RSpec.describe "checks/show", type: :view do
  before(:each) do
    @check = assign(:check, Check.create!(
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
