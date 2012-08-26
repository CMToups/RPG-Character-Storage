require 'spec_helper'

describe "characters/new" do
  before(:each) do
    assign(:character, stub_model(Character,
      :experience_points => 1,
      :name => "MyString",
      :total_hit_points => 1,
      :money => 1
    ).as_new_record)
  end

  it "renders new character form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => characters_path, :method => "post" do
      assert_select "input#character_experience_points", :name => "character[experience_points]"
      assert_select "input#character_name", :name => "character[name]"
      assert_select "input#character_total_hit_points", :name => "character[total_hit_points]"
      assert_select "input#character_money", :name => "character[money]"
    end
  end
end
