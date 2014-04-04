require 'spec_helper'

describe "carriers/new" do
  before(:each) do
    assign(:carrier, stub_model(Carrier,
      :name => "MyString",
      :name_kana => "MyString"
    ).as_new_record)
  end

  it "renders new carrier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", carriers_path, "post" do
      assert_select "input#carrier_name[name=?]", "carrier[name]"
      assert_select "input#carrier_name_kana[name=?]", "carrier[name_kana]"
    end
  end
end
