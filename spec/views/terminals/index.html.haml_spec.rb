require 'spec_helper'

describe "terminals/index" do
  before(:each) do
    assign(:terminals, [
      stub_model(Terminal,
        :name => "Name",
        :terminal_master => nil,
        :volume => 1,
        :color => nil,
        :phone_number => "Phone Number",
        :updated_os => nil,
        :wifi => 2
      ),
      stub_model(Terminal,
        :name => "Name",
        :terminal_master => nil,
        :volume => 1,
        :color => nil,
        :phone_number => "Phone Number",
        :updated_os => nil,
        :wifi => 2
      )
    ])
  end

  it "renders a list of terminals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
