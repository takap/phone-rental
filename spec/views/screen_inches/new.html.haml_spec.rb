require 'spec_helper'

describe "screen_inches/new" do
  before(:each) do
    assign(:screen_inch, stub_model(ScreenInch,
      :size => 1.5
    ).as_new_record)
  end

  it "renders new screen_inch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_inches_path, "post" do
      assert_select "input#screen_inch_size[name=?]", "screen_inch[size]"
    end
  end
end
