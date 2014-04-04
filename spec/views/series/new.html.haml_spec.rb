require 'spec_helper'

describe "series/new" do
  before(:each) do
    assign(:series, stub_model(Series,
      :name => "MyString",
      :name_kana => "MyString"
    ).as_new_record)
  end

  it "renders new series form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", series_index_path, "post" do
      assert_select "input#series_name[name=?]", "series[name]"
      assert_select "input#series_name_kana[name=?]", "series[name_kana]"
    end
  end
end
