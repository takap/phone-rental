require 'spec_helper'

describe "screen_densities/index" do
  before(:each) do
    assign(:screen_densities, [
      stub_model(ScreenDensity,
        :size => "Size"
      ),
      stub_model(ScreenDensity,
        :size => "Size"
      )
    ])
  end

  it "renders a list of screen_densities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end
