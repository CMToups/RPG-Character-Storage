require 'spec_helper'

describe "powers/index" do
  before(:each) do
    assign(:powers, [
      stub_model(Power,
        :name => "Name",
        :discipline => "Discipline",
        :subdiscipline => "Subdiscipline",
        :descriptor => "Descriptor",
        :level => "Level",
        :display => "Display",
        :manifesting_time => "Manifesting Time",
        :power_range => "Power Range",
        :power_target => "Power Target",
        :area => "Area",
        :result => "Result",
        :duration => "Duration",
        :saving_throw => "Saving Throw",
        :power_points => "Power Points",
        :power_resistance => "Power Resistance",
        :short_description => "MyText",
        :xp_cost => "MyText",
        :description => "MyText",
        :augment => "MyText",
        :full_text => "MyText",
        :reference => "Reference"
      ),
      stub_model(Power,
        :name => "Name",
        :discipline => "Discipline",
        :subdiscipline => "Subdiscipline",
        :descriptor => "Descriptor",
        :level => "Level",
        :display => "Display",
        :manifesting_time => "Manifesting Time",
        :power_range => "Power Range",
        :power_target => "Power Target",
        :area => "Area",
        :result => "Result",
        :duration => "Duration",
        :saving_throw => "Saving Throw",
        :power_points => "Power Points",
        :power_resistance => "Power Resistance",
        :short_description => "MyText",
        :xp_cost => "MyText",
        :description => "MyText",
        :augment => "MyText",
        :full_text => "MyText",
        :reference => "Reference"
      )
    ])
  end

  it "renders a list of powers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Discipline".to_s, :count => 2
    assert_select "tr>td", :text => "Subdiscipline".to_s, :count => 2
    assert_select "tr>td", :text => "Descriptor".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Manifesting Time".to_s, :count => 2
    assert_select "tr>td", :text => "Power Range".to_s, :count => 2
    assert_select "tr>td", :text => "Power Target".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Result".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Saving Throw".to_s, :count => 2
    assert_select "tr>td", :text => "Power Points".to_s, :count => 2
    assert_select "tr>td", :text => "Power Resistance".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
