require 'spec_helper'

describe "terminal_masters/edit" do
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
      :nfc => 1
    ))
  end

  it "renders the edit terminal_master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", terminal_master_path(@terminal_master), "post" do
      assert_select "input#terminal_master_carrier[name=?]", "terminal_master[carrier]"
      assert_select "input#terminal_master_maker[name=?]", "terminal_master[maker]"
      assert_select "input#terminal_master_series[name=?]", "terminal_master[series]"
      assert_select "input#terminal_master_model[name=?]", "terminal_master[model]"
      assert_select "input#terminal_master_default_os[name=?]", "terminal_master[default_os]"
      assert_select "input#terminal_master_screen_inch[name=?]", "terminal_master[screen_inch]"
      assert_select "input#terminal_master_screen_width[name=?]", "terminal_master[screen_width]"
      assert_select "input#terminal_master_screen_height[name=?]", "terminal_master[screen_height]"
      assert_select "input#terminal_master_screen_density[name=?]", "terminal_master[screen_density]"
      assert_select "input#terminal_master_tablet[name=?]", "terminal_master[tablet]"
      assert_select "input#terminal_master_nfc[name=?]", "terminal_master[nfc]"
    end
  end
end
