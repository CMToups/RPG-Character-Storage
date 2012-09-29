require 'spec_helper'

describe "spells/show" do
  before(:each) do
    @spell = assign(:spell, stub_model(Spell,
      :name => "Name",
      :altname => "Altname",
      :school => "School",
      :subschool => "Subschool",
      :descriptor => "Descriptor",
      :spellcraft_dc => 1,
      :level => "Level",
      :components => "MyText",
      :casting_time => "Casting Time",
      :spell_range => "Spell Range",
      :spell_target => "Spell Target",
      :area => "Area",
      :result => "Result",
      :duration => "Duration",
      :saving_throw => "Saving Throw",
      :spell_resistance => "Spell Resistance",
      :short_description => "Short Description",
      :to_develop => "MyText",
      :material_components => "MyText",
      :arcane_material_components => "Arcane Material Components",
      :focus => "MyText",
      :description => "MyText",
      :xp_cost => "MyText",
      :arcane_focus => "Arcane Focus",
      :wizard_focus => "Wizard Focus",
      :verbal_components => "Verbal Components",
      :sorcerer_focus => "Sorcerer Focus",
      :bard_focus => "Bard Focus",
      :cleric_focus => "Cleric Focus",
      :druid_focus => "Druid Focus",
      :full_text => "MyText",
      :reference => "Reference"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Altname/)
    rendered.should match(/School/)
    rendered.should match(/Subschool/)
    rendered.should match(/Descriptor/)
    rendered.should match(/1/)
    rendered.should match(/Level/)
    rendered.should match(/MyText/)
    rendered.should match(/Casting Time/)
    rendered.should match(/Spell Range/)
    rendered.should match(/Spell Target/)
    rendered.should match(/Area/)
    rendered.should match(/Result/)
    rendered.should match(/Duration/)
    rendered.should match(/Saving Throw/)
    rendered.should match(/Spell Resistance/)
    rendered.should match(/Short Description/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Arcane Material Components/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Arcane Focus/)
    rendered.should match(/Wizard Focus/)
    rendered.should match(/Verbal Components/)
    rendered.should match(/Sorcerer Focus/)
    rendered.should match(/Bard Focus/)
    rendered.should match(/Cleric Focus/)
    rendered.should match(/Druid Focus/)
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
  end
end
