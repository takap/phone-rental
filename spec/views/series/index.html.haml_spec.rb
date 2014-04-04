require 'spec_helper'

describe "series/index" do
  before(:each) do
    assign(:series, [
      stub_model(Series,
        :name => "Name",
        :name_kana => "Name Kana"
      ),
      stub_model(Series,
        :name => "Name",
        :name_kana => "Name Kana"
      )
    ])
  end

  it "renders a list of series" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
  end
end
