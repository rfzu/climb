require 'spec_helper'

describe "exercises/edit" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :description => "MyText",
      :attr_id => 1
    ))
  end

  it "renders the edit exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do
      assert_select "textarea#exercise_description[name=?]", "exercise[description]"
      assert_select "input#exercise_attr_id[name=?]", "exercise[attr_id]"
    end
  end
end
