require 'spec_helper'

describe "domains/show" do
  before(:each) do
    @domain = assign(:domain, stub_model(Domain,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Spell 1/)
    rendered.should match(/Spell 2/)
    rendered.should match(/Spell 3/)
    rendered.should match(/Spell 4/)
    rendered.should match(/Spell 5/)
    rendered.should match(/Spell 6/)
    rendered.should match(/Spell 7/)
    rendered.should match(/Spell 8/)
    rendered.should match(/Spell 9/)
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
  end
end
