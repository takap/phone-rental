require 'spec_helper'

describe "screen_heights/index" do
  before(:each) do
    assign(:screen_heights, [
      stub_model(ScreenHeight,
        :size => 1
      ),
      stub_model(ScreenHeight,
        :size => 1
      )
    ])
  end

  it "renders a list of screen_heights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
