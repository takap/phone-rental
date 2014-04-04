require 'spec_helper'

describe "series/edit" do
  before(:each) do
    @series = assign(:series, stub_model(Series,
      :name => "MyString",
      :name_kana => "MyString"
    ))
  end

  it "renders the edit series form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", series_path(@series), "post" do
      assert_select "input#series_name[name=?]", "series[name]"
      assert_select "input#series_name_kana[name=?]", "series[name_kana]"
    end
  end
end
