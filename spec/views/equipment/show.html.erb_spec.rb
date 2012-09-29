require 'spec_helper'

describe "equipment/show" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :name => "Name",
      :family => "Family",
      :category => "Category",
      :subcategory => "Subcategory",
      :cost => "Cost",
      :dmg_s => "Dmg S",
      :armor_shield_bonus => 1,
      :maximum_dex_bonus => 2,
      :dmg_m => "Dmg M",
      :weight => "Weight",
      :critical => "Critical",
      :armor_check_penalty => "Armor Check Penalty",
      :arcane_spell_failure_chance => "Arcane Spell Failure Chance",
      :range_increment => "Range Increment",
      :speed_30 => "Speed 30",
      :weapon_type => "Weapon Type",
      :speed_20 => "Speed 20",
      :full_text => "MyText",
      :reference => "Reference"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Family/)
    rendered.should match(/Category/)
    rendered.should match(/Subcategory/)
    rendered.should match(/Cost/)
    rendered.should match(/Dmg S/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Dmg M/)
    rendered.should match(/Weight/)
    rendered.should match(/Critical/)
    rendered.should match(/Armor Check Penalty/)
    rendered.should match(/Arcane Spell Failure Chance/)
    rendered.should match(/Range Increment/)
    rendered.should match(/Speed 30/)
    rendered.should match(/Weapon Type/)
    rendered.should match(/Speed 20/)
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
  end
end
