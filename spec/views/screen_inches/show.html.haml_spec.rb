require 'spec_helper'

describe "screen_inches/show" do
  before(:each) do
    @screen_inch = assign(:screen_inch, stub_model(ScreenInch,
      :size => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
