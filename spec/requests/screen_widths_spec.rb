require 'spec_helper'

describe "ScreenWidths" do
  describe "GET /screen_widths" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get screen_widths_path
      response.status.should be(200)
    end
  end
end
