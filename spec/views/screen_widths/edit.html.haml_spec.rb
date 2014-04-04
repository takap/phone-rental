require 'spec_helper'

describe "screen_widths/edit" do
  before(:each) do
    @screen_width = assign(:screen_width, stub_model(ScreenWidth,
      :size => 1
    ))
  end

  it "renders the edit screen_width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_width_path(@screen_width), "post" do
      assert_select "input#screen_width_size[name=?]", "screen_width[size]"
    end
  end
end
