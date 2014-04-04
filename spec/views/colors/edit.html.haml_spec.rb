require 'spec_helper'

describe "colors/edit" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :name => "MyString",
      :hex => "MyString"
    ))
  end

  it "renders the edit color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", color_path(@color), "post" do
      assert_select "input#color_name[name=?]", "color[name]"
      assert_select "input#color_hex[name=?]", "color[hex]"
    end
  end
end
