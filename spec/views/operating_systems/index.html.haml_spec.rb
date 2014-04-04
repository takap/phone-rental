require 'spec_helper'

describe "operating_systems/index" do
  before(:each) do
    assign(:operating_systems, [
      stub_model(OperatingSystem,
        :version_name => "Version Name",
        :version_code => 1
      ),
      stub_model(OperatingSystem,
        :version_name => "Version Name",
        :version_code => 1
      )
    ])
  end

  it "renders a list of operating_systems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Version Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
