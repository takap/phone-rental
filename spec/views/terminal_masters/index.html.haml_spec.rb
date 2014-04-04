require 'spec_helper'

describe "terminal_masters/index" do
  before(:each) do
    assign(:terminal_masters, [
      stub_model(TerminalMaster,
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
      ),
      stub_model(TerminalMaster,
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
      )
    ])
  end

  it "renders a list of terminal_masters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
