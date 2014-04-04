require 'spec_helper'

describe "screen_densities/new" do
  before(:each) do
    assign(:screen_density, stub_model(ScreenDensity,
      :size => "MyString"
    ).as_new_record)
  end

  it "renders new screen_density form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_densities_path, "post" do
      assert_select "input#screen_density_size[name=?]", "screen_density[size]"
    end
  end
end
