require 'spec_helper'

describe "screen_widths/index" do
  before(:each) do
    assign(:screen_widths, [
      stub_model(ScreenWidth,
        :size => 1
      ),
      stub_model(ScreenWidth,
        :size => 1
      )
    ])
  end

  it "renders a list of screen_widths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
