require 'rails_helper'

RSpec.describe "checks/new", type: :view do
  before(:each) do
    assign(:check, Check.new(
      :description => "MyText"
    ))
  end

  it "renders new check form" do
    render

    assert_select "form[action=?][method=?]", checks_path, "post" do

      assert_select "textarea[name=?]", "check[description]"
    end
  end
end
