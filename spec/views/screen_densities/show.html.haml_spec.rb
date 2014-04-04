require 'spec_helper'

describe "screen_densities/show" do
  before(:each) do
    @screen_density = assign(:screen_density, stub_model(ScreenDensity,
      :size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Size/)
  end
end
