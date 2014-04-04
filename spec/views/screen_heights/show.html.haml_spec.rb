require 'spec_helper'

describe "screen_heights/show" do
  before(:each) do
    @screen_height = assign(:screen_height, stub_model(ScreenHeight,
      :size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
