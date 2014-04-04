require 'spec_helper'

describe "screen_inches/edit" do
  before(:each) do
    @screen_inch = assign(:screen_inch, stub_model(ScreenInch,
      :size => 1.5
    ))
  end

  it "renders the edit screen_inch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_inch_path(@screen_inch), "post" do
      assert_select "input#screen_inch_size[name=?]", "screen_inch[size]"
    end
  end
end
