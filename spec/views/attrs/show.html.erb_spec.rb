require 'spec_helper'

describe "attrs/show" do
  before(:each) do
    @attr = assign(:attr, stub_model(Attr,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
