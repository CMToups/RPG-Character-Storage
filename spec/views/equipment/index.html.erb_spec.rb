require 'spec_helper'

describe "equipment/index" do
  before(:each) do
    assign(:equipment, [
      stub_model(Equipment,
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
      ),
      stub_model(Equipment,
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
      )
    ])
  end

  it "renders a list of equipment" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Family".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory".to_s, :count => 2
    assert_select "tr>td", :text => "Cost".to_s, :count => 2
    assert_select "tr>td", :text => "Dmg S".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Dmg M".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "Critical".to_s, :count => 2
    assert_select "tr>td", :text => "Armor Check Penalty".to_s, :count => 2
    assert_select "tr>td", :text => "Arcane Spell Failure Chance".to_s, :count => 2
    assert_select "tr>td", :text => "Range Increment".to_s, :count => 2
    assert_select "tr>td", :text => "Speed 30".to_s, :count => 2
    assert_select "tr>td", :text => "Weapon Type".to_s, :count => 2
    assert_select "tr>td", :text => "Speed 20".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
