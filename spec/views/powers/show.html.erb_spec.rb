require 'spec_helper'

describe "powers/show" do
  before(:each) do
    @power = assign(:power, stub_model(Power,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Discipline/)
    rendered.should match(/Subdiscipline/)
    rendered.should match(/Descriptor/)
    rendered.should match(/Level/)
    rendered.should match(/Display/)
    rendered.should match(/Manifesting Time/)
    rendered.should match(/Power Range/)
    rendered.should match(/Power Target/)
    rendered.should match(/Area/)
    rendered.should match(/Result/)
    rendered.should match(/Duration/)
    rendered.should match(/Saving Throw/)
    rendered.should match(/Power Points/)
    rendered.should match(/Power Resistance/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
  end
end
