require 'spec_helper'

describe "terminals/show" do
  before(:each) do
    @terminal = assign(:terminal, stub_model(Terminal,
      :name => "Name",
      :terminal_master => nil,
      :volume => 1,
      :color => nil,
      :phone_number => "Phone Number",
      :updated_os => nil,
      :place => nil,
      :wifi => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/Phone Number/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/2/)
  end
end
