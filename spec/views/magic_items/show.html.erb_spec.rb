require 'spec_helper'

describe "magic_items/show" do
  before(:each) do
    @magic_item = assign(:magic_item, stub_model(MagicItem,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/Subcategory/)
    rendered.should match(/false/)
    rendered.should match(/Aura/)
    rendered.should match(/1/)
    rendered.should match(/Price/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/Cost/)
    rendered.should match(/Weight/)
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
  end
end
