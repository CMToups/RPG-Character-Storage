require 'spec_helper'

describe Domain do 

	it "should have many spell slots as spell" do 
		should have_many(:spell_slots)
	end

	it "should have a valid granted_powers" do 
		should respond_to(:granted_powers)
	end

	it "should have a valid spell_1" do 
		should respond_to(:spell_1)
	end

	it "should have a valid spell_2" do 
		should respond_to(:spell_2)
	end

	it "should have a valid spell_3" do 
		should respond_to(:spell_3)
	end

	it "should have a valid spell_4" do 
		should respond_to(:spell_4)
	end

	it "should have a valid spell_5" do 
		should respond_to(:spell_5)
	end

	it "should have a valid spell_6" do 
		should respond_to(:spell_6)
	end

	it "should have a valid spell_7" do 
		should respond_to(:spell_7)
	end

	it "should have a valid spell_8" do 
		should respond_to(:spell_8)
	end

	it "should have a valid spell_9" do 
		should respond_to(:spell_9)
	end

	it "should have a valid full_text" do 
		should respond_to(:full_text)
	end

	it "should have a valid reference" do 
		should respond_to(:reference)
	end

end
