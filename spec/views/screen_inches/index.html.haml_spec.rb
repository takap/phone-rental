require 'spec_helper'

describe "screen_inches/index" do
  before(:each) do
    assign(:screen_inches, [
      stub_model(ScreenInch,
        :size => 1.5
      ),
      stub_model(ScreenInch,
        :size => 1.5
      )
    ])
  end

  it "renders a list of screen_inches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
