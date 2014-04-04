require 'spec_helper'

describe "operating_systems/show" do
  before(:each) do
    @operating_system = assign(:operating_system, stub_model(OperatingSystem,
      :version_name => "Version Name",
      :version_code => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Version Name/)
    rendered.should match(/1/)
  end
end
