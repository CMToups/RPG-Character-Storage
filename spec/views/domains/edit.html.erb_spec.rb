require 'spec_helper'

describe "domains/edit" do
  before(:each) do
    @domain = assign(:domain, stub_model(Domain,
      :name => "MyString",
      :granted_powers => "MyText",
      :spell_1 => "MyString",
      :spell_2 => "MyString",
      :spell_3 => "MyString",
      :spell_4 => "MyString",
      :spell_5 => "MyString",
      :spell_6 => "MyString",
      :spell_7 => "MyString",
      :spell_8 => "MyString",
      :spell_9 => "MyString",
      :full_text => "MyText",
      :reference => "MyString"
    ))
  end

  it "renders the edit domain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domains_path(@domain), :method => "post" do
      assert_select "input#domain_name", :name => "domain[name]"
      assert_select "textarea#domain_granted_powers", :name => "domain[granted_powers]"
      assert_select "input#domain_spell_1", :name => "domain[spell_1]"
      assert_select "input#domain_spell_2", :name => "domain[spell_2]"
      assert_select "input#domain_spell_3", :name => "domain[spell_3]"
      assert_select "input#domain_spell_4", :name => "domain[spell_4]"
      assert_select "input#domain_spell_5", :name => "domain[spell_5]"
      assert_select "input#domain_spell_6", :name => "domain[spell_6]"
      assert_select "input#domain_spell_7", :name => "domain[spell_7]"
      assert_select "input#domain_spell_8", :name => "domain[spell_8]"
      assert_select "input#domain_spell_9", :name => "domain[spell_9]"
      assert_select "textarea#domain_full_text", :name => "domain[full_text]"
      assert_select "input#domain_reference", :name => "domain[reference]"
    end
  end
end
