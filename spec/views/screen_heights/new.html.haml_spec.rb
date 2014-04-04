require 'spec_helper'

describe "screen_heights/new" do
  before(:each) do
    assign(:screen_height, stub_model(ScreenHeight,
      :size => 1
    ).as_new_record)
  end

  it "renders new screen_height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_heights_path, "post" do
      assert_select "input#screen_height_size[name=?]", "screen_height[size]"
    end
  end
end
