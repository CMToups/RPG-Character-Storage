require 'spec_helper'

describe Power do

	it "should have many spell slots as spell" do 
		should have_many(:spell_slot)
	end

	it "should have a valid name" do 
		should respond_to(:name)
	end

	it "should have a valid discipline" do 
		should respond_to(:discipline)
	end

	it "should have a valid subdiscipline" do 
		should respond_to(:subdiscipline)
	end

	it "should have a valid descriptor" do 
		should respond_to(:descriptor)
	end

	it "should have a valid level" do 
		should respond_to(:level)
	end

	it "should have a valid display" do 
		should respond_to(:display)
	end

	it "should have a valid manifesting_time" do 
		should respond_to(:manifesting_time)
	end

	it "should have a valid power_range" do 
		should respond_to(:power_range)
	end

	it "should have a valid power_target" do 
		should respond_to(:power_target)
	end

	it "should have a valid area" do 
		should respond_to(:area)
	end

	it "should have a valid result" do 
		should respond_to(:result)
	end

	it "should have a valid duration" do 
		should respond_to(:duration)
	end

	it "should have a valid saving_throw" do 
		should respond_to(:saving_throw)
	end

	it "should have a valid power_points" do 
		should respond_to(:power_points)
	end

	it "should have a valid power_resistance" do 
		should respond_to(:power_resistance)
	end

	it "should have a valid short_description" do 
		should respond_to(:short_description)
	end

	it "should have a valid xp_cost" do 
		should respond_to(:xp_cost)
	end

	it "should have a valid description" do 
		should respond_to(:description)
	end

	it "should have a valid description" do 
		should respond_to(:description)
	end

	it "should have a valid augment" do 
		should respond_to(:augment)
	end

	it "should have a valid reference" do 
		should respond_to(:reference)
	end

end
