require 'spec_helper'

describe "screen_widths/show" do
  before(:each) do
    @screen_width = assign(:screen_width, stub_model(ScreenWidth,
      :size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
