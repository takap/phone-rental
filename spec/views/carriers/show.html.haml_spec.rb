require 'spec_helper'

describe "carriers/show" do
  before(:each) do
    @carrier = assign(:carrier, stub_model(Carrier,
      :name => "Name",
      :name_kana => "Name Kana"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Name Kana/)
  end
end
