require 'spec_helper'

describe "TerminalMasters" do
  describe "GET /terminal_masters" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get terminal_masters_path
      response.status.should be(200)
    end
  end
end
