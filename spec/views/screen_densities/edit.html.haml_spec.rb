require 'spec_helper'

describe "screen_densities/edit" do
  before(:each) do
    @screen_density = assign(:screen_density, stub_model(ScreenDensity,
      :size => "MyString"
    ))
  end

  it "renders the edit screen_density form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screen_density_path(@screen_density), "post" do
      assert_select "input#screen_density_size[name=?]", "screen_density[size]"
    end
  end
end
