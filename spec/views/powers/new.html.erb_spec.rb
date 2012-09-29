require 'spec_helper'

describe "powers/new" do
  before(:each) do
    assign(:power, stub_model(Power,
      :name => "MyString",
      :discipline => "MyString",
      :subdiscipline => "MyString",
      :descriptor => "MyString",
      :level => "MyString",
      :display => "MyString",
      :manifesting_time => "MyString",
      :power_range => "MyString",
      :power_target => "MyString",
      :area => "MyString",
      :result => "MyString",
      :duration => "MyString",
      :saving_throw => "MyString",
      :power_points => "MyString",
      :power_resistance => "MyString",
      :short_description => "MyText",
      :xp_cost => "MyText",
      :description => "MyText",
      :augment => "MyText",
      :full_text => "MyText",
      :reference => "MyString"
    ).as_new_record)
  end

  it "renders new power form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => powers_path, :method => "post" do
      assert_select "input#power_name", :name => "power[name]"
      assert_select "input#power_discipline", :name => "power[discipline]"
      assert_select "input#power_subdiscipline", :name => "power[subdiscipline]"
      assert_select "input#power_descriptor", :name => "power[descriptor]"
      assert_select "input#power_level", :name => "power[level]"
      assert_select "input#power_display", :name => "power[display]"
      assert_select "input#power_manifesting_time", :name => "power[manifesting_time]"
      assert_select "input#power_power_range", :name => "power[power_range]"
      assert_select "input#power_power_target", :name => "power[power_target]"
      assert_select "input#power_area", :name => "power[area]"
      assert_select "input#power_result", :name => "power[result]"
      assert_select "input#power_duration", :name => "power[duration]"
      assert_select "input#power_saving_throw", :name => "power[saving_throw]"
      assert_select "input#power_power_points", :name => "power[power_points]"
      assert_select "input#power_power_resistance", :name => "power[power_resistance]"
      assert_select "textarea#power_short_description", :name => "power[short_description]"
      assert_select "textarea#power_xp_cost", :name => "power[xp_cost]"
      assert_select "textarea#power_description", :name => "power[description]"
      assert_select "textarea#power_augment", :name => "power[augment]"
      assert_select "textarea#power_full_text", :name => "power[full_text]"
      assert_select "input#power_reference", :name => "power[reference]"
    end
  end
end
