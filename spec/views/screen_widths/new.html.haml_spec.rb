require 'spec_helper'

describe "screen_widths/new" do
  before(:each) do
    assign(:screen_width, stub_model(ScreenWidth,
      :size => 1
    ).as_new_record)
  end

  it "renders new screen_width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_widths_path, "post" do
      assert_select "input#screen_width_size[name=?]", "screen_width[size]"
    end
  end
end
