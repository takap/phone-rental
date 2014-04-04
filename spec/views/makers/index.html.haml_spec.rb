require 'spec_helper'

describe "makers/index" do
  before(:each) do
    assign(:makers, [
      stub_model(Maker,
        :name => "Name",
        :name_kana => "Name Kana"
      ),
      stub_model(Maker,
        :name => "Name",
        :name_kana => "Name Kana"
      )
    ])
  end

  it "renders a list of makers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
  end
end
