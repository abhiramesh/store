require 'spec_helper'

describe "preferences/show" do
  before(:each) do
    @preference = assign(:preference, stub_model(Preference))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
