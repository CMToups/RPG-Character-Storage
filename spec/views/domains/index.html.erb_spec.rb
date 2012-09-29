require 'spec_helper'

describe "domains/index" do
  before(:each) do
    assign(:domains, [
      stub_model(Domain,
        :name => "Name",
        :granted_powers => "MyText",
        :spell_1 => "Spell 1",
        :spell_2 => "Spell 2",
        :spell_3 => "Spell 3",
        :spell_4 => "Spell 4",
        :spell_5 => "Spell 5",
        :spell_6 => "Spell 6",
        :spell_7 => "Spell 7",
        :spell_8 => "Spell 8",
        :spell_9 => "Spell 9",
        :full_text => "MyText",
        :reference => "Reference"
      ),
      stub_model(Domain,
        :name => "Name",
        :granted_powers => "MyText",
        :spell_1 => "Spell 1",
        :spell_2 => "Spell 2",
        :spell_3 => "Spell 3",
        :spell_4 => "Spell 4",
        :spell_5 => "Spell 5",
        :spell_6 => "Spell 6",
        :spell_7 => "Spell 7",
        :spell_8 => "Spell 8",
        :spell_9 => "Spell 9",
        :full_text => "MyText",
        :reference => "Reference"
      )
    ])
  end

  it "renders a list of domains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 1".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 2".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 3".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 4".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 5".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 6".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 7".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 8".to_s, :count => 2
    assert_select "tr>td", :text => "Spell 9".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
