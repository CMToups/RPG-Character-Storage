require 'spec_helper'

describe "equipment/new" do
  before(:each) do
    assign(:equipment, stub_model(Equipment,
      :name => "MyString",
      :family => "MyString",
      :category => "MyString",
      :subcategory => "MyString",
      :cost => "MyString",
      :dmg_s => "MyString",
      :armor_shield_bonus => 1,
      :maximum_dex_bonus => 1,
      :dmg_m => "MyString",
      :weight => "MyString",
      :critical => "MyString",
      :armor_check_penalty => "MyString",
      :arcane_spell_failure_chance => "MyString",
      :range_increment => "MyString",
      :speed_30 => "MyString",
      :weapon_type => "MyString",
      :speed_20 => "MyString",
      :full_text => "MyText",
      :reference => "MyString"
    ).as_new_record)
  end

  it "renders new equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipment_index_path, :method => "post" do
      assert_select "input#equipment_name", :name => "equipment[name]"
      assert_select "input#equipment_family", :name => "equipment[family]"
      assert_select "input#equipment_category", :name => "equipment[category]"
      assert_select "input#equipment_subcategory", :name => "equipment[subcategory]"
      assert_select "input#equipment_cost", :name => "equipment[cost]"
      assert_select "input#equipment_dmg_s", :name => "equipment[dmg_s]"
      assert_select "input#equipment_armor_shield_bonus", :name => "equipment[armor_shield_bonus]"
      assert_select "input#equipment_maximum_dex_bonus", :name => "equipment[maximum_dex_bonus]"
      assert_select "input#equipment_dmg_m", :name => "equipment[dmg_m]"
      assert_select "input#equipment_weight", :name => "equipment[weight]"
      assert_select "input#equipment_critical", :name => "equipment[critical]"
      assert_select "input#equipment_armor_check_penalty", :name => "equipment[armor_check_penalty]"
      assert_select "input#equipment_arcane_spell_failure_chance", :name => "equipment[arcane_spell_failure_chance]"
      assert_select "input#equipment_range_increment", :name => "equipment[range_increment]"
      assert_select "input#equipment_speed_30", :name => "equipment[speed_30]"
      assert_select "input#equipment_weapon_type", :name => "equipment[weapon_type]"
      assert_select "input#equipment_speed_20", :name => "equipment[speed_20]"
      assert_select "textarea#equipment_full_text", :name => "equipment[full_text]"
      assert_select "input#equipment_reference", :name => "equipment[reference]"
    end
  end
end
