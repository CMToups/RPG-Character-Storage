require 'spec_helper'

describe "magic_items/edit" do
  before(:each) do
    @magic_item = assign(:magic_item, stub_model(MagicItem,
      :name => "MyString",
      :category => "MyString",
      :subcategory => "MyString",
      :special_ability => false,
      :aura => "MyString",
      :caster_level => 1,
      :price => "MyString",
      :manifester_level => 1,
      :prereq => "MyText",
      :cost => "MyString",
      :weight => "MyString",
      :full_text => "MyText",
      :reference => "MyString"
    ))
  end

  it "renders the edit magic_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => magic_items_path(@magic_item), :method => "post" do
      assert_select "input#magic_item_name", :name => "magic_item[name]"
      assert_select "input#magic_item_category", :name => "magic_item[category]"
      assert_select "input#magic_item_subcategory", :name => "magic_item[subcategory]"
      assert_select "input#magic_item_special_ability", :name => "magic_item[special_ability]"
      assert_select "input#magic_item_aura", :name => "magic_item[aura]"
      assert_select "input#magic_item_caster_level", :name => "magic_item[caster_level]"
      assert_select "input#magic_item_price", :name => "magic_item[price]"
      assert_select "input#magic_item_manifester_level", :name => "magic_item[manifester_level]"
      assert_select "textarea#magic_item_prereq", :name => "magic_item[prereq]"
      assert_select "input#magic_item_cost", :name => "magic_item[cost]"
      assert_select "input#magic_item_weight", :name => "magic_item[weight]"
      assert_select "textarea#magic_item_full_text", :name => "magic_item[full_text]"
      assert_select "input#magic_item_reference", :name => "magic_item[reference]"
    end
  end
end
