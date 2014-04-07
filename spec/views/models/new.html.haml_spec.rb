require 'spec_helper'

describe "models/new" do
  before(:each) do
    assign(:model, stub_model(Model,
      :name => "MyString",
      :name_kana => "MyString"
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", models_path, "post" do
      assert_select "input#model_name[name=?]", "model[name]"
      assert_select "input#model_name_kana[name=?]", "model[name_kana]"
    end
  end
end