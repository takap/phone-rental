require 'spec_helper'

describe "carriers/index" do
  before(:each) do
    assign(:carriers, [
      stub_model(Carrier,
        :name => "Name",
        :name_kana => "Name Kana"
      ),
      stub_model(Carrier,
        :name => "Name",
        :name_kana => "Name Kana"
      )
    ])
  end

  it "renders a list of carriers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
  end
end
