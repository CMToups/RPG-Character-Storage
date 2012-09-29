require 'spec_helper'

describe "spells/new" do
  before(:each) do
    assign(:spell, stub_model(Spell,
      :name => "MyString",
      :altname => "MyString",
      :school => "MyString",
      :subschool => "MyString",
      :descriptor => "MyString",
      :spellcraft_dc => 1,
      :level => "MyString",
      :components => "MyText",
      :casting_time => "MyString",
      :spell_range => "MyString",
      :spell_target => "MyString",
      :area => "MyString",
      :result => "MyString",
      :duration => "MyString",
      :saving_throw => "MyString",
      :spell_resistance => "MyString",
      :short_description => "MyString",
      :to_develop => "MyText",
      :material_components => "MyText",
      :arcane_material_components => "MyString",
      :focus => "MyText",
      :description => "MyText",
      :xp_cost => "MyText",
      :arcane_focus => "MyString",
      :wizard_focus => "MyString",
      :verbal_components => "MyString",
      :sorcerer_focus => "MyString",
      :bard_focus => "MyString",
      :cleric_focus => "MyString",
      :druid_focus => "MyString",
      :full_text => "MyText",
      :reference => "MyString"
    ).as_new_record)
  end

  it "renders new spell form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spells_path, :method => "post" do
      assert_select "input#spell_name", :name => "spell[name]"
      assert_select "input#spell_altname", :name => "spell[altname]"
      assert_select "input#spell_school", :name => "spell[school]"
      assert_select "input#spell_subschool", :name => "spell[subschool]"
      assert_select "input#spell_descriptor", :name => "spell[descriptor]"
      assert_select "input#spell_spellcraft_dc", :name => "spell[spellcraft_dc]"
      assert_select "input#spell_level", :name => "spell[level]"
      assert_select "textarea#spell_components", :name => "spell[components]"
      assert_select "input#spell_casting_time", :name => "spell[casting_time]"
      assert_select "input#spell_spell_range", :name => "spell[spell_range]"
      assert_select "input#spell_spell_target", :name => "spell[spell_target]"
      assert_select "input#spell_area", :name => "spell[area]"
      assert_select "input#spell_result", :name => "spell[result]"
      assert_select "input#spell_duration", :name => "spell[duration]"
      assert_select "input#spell_saving_throw", :name => "spell[saving_throw]"
      assert_select "input#spell_spell_resistance", :name => "spell[spell_resistance]"
      assert_select "input#spell_short_description", :name => "spell[short_description]"
      assert_select "textarea#spell_to_develop", :name => "spell[to_develop]"
      assert_select "textarea#spell_material_components", :name => "spell[material_components]"
      assert_select "input#spell_arcane_material_components", :name => "spell[arcane_material_components]"
      assert_select "textarea#spell_focus", :name => "spell[focus]"
      assert_select "textarea#spell_description", :name => "spell[description]"
      assert_select "textarea#spell_xp_cost", :name => "spell[xp_cost]"
      assert_select "input#spell_arcane_focus", :name => "spell[arcane_focus]"
      assert_select "input#spell_wizard_focus", :name => "spell[wizard_focus]"
      assert_select "input#spell_verbal_components", :name => "spell[verbal_components]"
      assert_select "input#spell_sorcerer_focus", :name => "spell[sorcerer_focus]"
      assert_select "input#spell_bard_focus", :name => "spell[bard_focus]"
      assert_select "input#spell_cleric_focus", :name => "spell[cleric_focus]"
      assert_select "input#spell_druid_focus", :name => "spell[druid_focus]"
      assert_select "textarea#spell_full_text", :name => "spell[full_text]"
      assert_select "input#spell_reference", :name => "spell[reference]"
    end
  end
end
