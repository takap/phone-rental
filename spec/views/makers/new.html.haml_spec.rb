require 'spec_helper'

describe "makers/new" do
  before(:each) do
    assign(:maker, stub_model(Maker,
      :name => "MyString",
      :name_kana => "MyString"
    ).as_new_record)
  end

  it "renders new maker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", makers_path, "post" do
      assert_select "input#maker_name[name=?]", "maker[name]"
      assert_select "input#maker_name_kana[name=?]", "maker[name_kana]"
    end
  end
end
