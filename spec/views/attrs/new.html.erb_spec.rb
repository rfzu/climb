require 'spec_helper'

describe "attrs/new" do
  before(:each) do
    assign(:attr, stub_model(Attr,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new attr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attrs_path, "post" do
      assert_select "input#attr_name[name=?]", "attr[name]"
    end
  end
end
