require 'spec_helper'

describe "spells/index" do
  before(:each) do
    assign(:spells, [
      stub_model(Spell,
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
      ),
      stub_model(Spell,
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
      )
    ])
  end

  it "renders a list of spells" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Altname".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Subschool".to_s, :count => 2
    assert_select "tr>td", :text => "Descriptor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Casting Time".to_s, :count => 2
    assert_select "tr>td", :text => "Spell Range".to_s, :count => 2
    assert_select "tr>td", :text => "Spell Target".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Result".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Saving Throw".to_s, :count => 2
    assert_select "tr>td", :text => "Spell Resistance".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Arcane Material Components".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Arcane Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Wizard Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Verbal Components".to_s, :count => 2
    assert_select "tr>td", :text => "Sorcerer Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Bard Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Cleric Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Druid Focus".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
