require 'rails_helper'

RSpec.describe "checks/edit", type: :view do
  before(:each) do
    @check = assign(:check, Check.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit check form" do
    render

    assert_select "form[action=?][method=?]", check_path(@check), "post" do

      assert_select "textarea[name=?]", "check[description]"
    end
  end
end
