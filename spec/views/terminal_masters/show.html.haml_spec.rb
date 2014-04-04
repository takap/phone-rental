require 'spec_helper'

describe "terminal_masters/show" do
  before(:each) do
    @terminal_master = assign(:terminal_master, stub_model(TerminalMaster,
      :carrier => nil,
      :maker => nil,
      :series => nil,
      :model => nil,
      :default_os => nil,
      :screen_inch => nil,
      :screen_width => nil,
      :screen_height => nil,
      :screen_density => nil,
      :tablet => 1,
      :nfc => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
