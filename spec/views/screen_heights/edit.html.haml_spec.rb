require 'spec_helper'

describe "screen_heights/edit" do
  before(:each) do
    @screen_height = assign(:screen_height, stub_model(ScreenHeight,
      :size => 1
    ))
  end

  it "renders the edit screen_height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_height_path(@screen_height), "post" do
      assert_select "input#screen_height_size[name=?]", "screen_height[size]"
    end
  end
end
