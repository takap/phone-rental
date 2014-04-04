require 'spec_helper'

describe "carriers/edit" do
  before(:each) do
    @carrier = assign(:carrier, stub_model(Carrier,
      :name => "MyString",
      :name_kana => "MyString"
    ))
  end

  it "renders the edit carrier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", carrier_path(@carrier), "post" do
      assert_select "input#carrier_name[name=?]", "carrier[name]"
      assert_select "input#carrier_name_kana[name=?]", "carrier[name_kana]"
    end
  end
end
