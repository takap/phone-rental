require 'spec_helper'

describe "ScreenHeights" do
  describe "GET /screen_heights" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get screen_heights_path
      response.status.should be(200)
    end
  end
end
