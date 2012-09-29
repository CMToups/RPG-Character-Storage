require 'spec_helper'

describe "magic_items/index" do
  before(:each) do
    assign(:magic_items, [
      stub_model(MagicItem,
        :name => "Name",
        :category => "Category",
        :subcategory => "Subcategory",
        :special_ability => false,
        :aura => "Aura",
        :caster_level => 1,
        :price => "Price",
        :manifester_level => 2,
        :prereq => "MyText",
        :cost => "Cost",
        :weight => "Weight",
        :full_text => "MyText",
        :reference => "Reference"
      ),
      stub_model(MagicItem,
        :name => "Name",
        :category => "Category",
        :subcategory => "Subcategory",
        :special_ability => false,
        :aura => "Aura",
        :caster_level => 1,
        :price => "Price",
        :manifester_level => 2,
        :prereq => "MyText",
        :cost => "Cost",
        :weight => "Weight",
        :full_text => "MyText",
        :reference => "Reference"
      )
    ])
  end

  it "renders a list of magic_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Aura".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cost".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
