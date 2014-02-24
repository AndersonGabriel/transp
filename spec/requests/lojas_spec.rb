require 'spec_helper'

describe "Lojas" do
  describe "GET /lojas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lojas_path
      response.status.should be(200)
    end
  end
end
