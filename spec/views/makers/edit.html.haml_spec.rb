require 'spec_helper'

describe "makers/edit" do
  before(:each) do
    @maker = assign(:maker, stub_model(Maker,
      :name => "MyString",
      :name_kana => "MyString"
    ))
  end

  it "renders the edit maker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", maker_path(@maker), "post" do
      assert_select "input#maker_name[name=?]", "maker[name]"
      assert_select "input#maker_name_kana[name=?]", "maker[name_kana]"
    end
  end
end
