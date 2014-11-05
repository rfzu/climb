require 'spec_helper'

describe "attrs/edit" do
  before(:each) do
    @attr = assign(:attr, stub_model(Attr,
      :name => "MyString"
    ))
  end

  it "renders the edit attr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attr_path(@attr), "post" do
      assert_select "input#attr_name[name=?]", "attr[name]"
    end
  end
end
