require 'spec_helper'

describe "preferences/index" do
  before(:each) do
    assign(:preferences, [
      stub_model(Preference),
      stub_model(Preference)
    ])
  end

  it "renders a list of preferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
