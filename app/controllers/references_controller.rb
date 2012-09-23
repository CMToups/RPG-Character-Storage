class ReferencesController < ApplicationController

	layout("references")
  def index
  	category = params[:category] 
  	
  	if category
	  	
	  	if category[0].include? "_" #Non class searches should start with _<string>. Check and remove.
	  		#For now only spells use this functinallity, if this changes refacter this code.
	  		@klass = Spell
	  		@klass_search = @klass.where("cl_#{category[1..-1]} IS NOT NULL")
	  	else
	  		@klass = "#{category}".classify.constantize
	  		@klass_search = category.classify.constantize.all
	  	end
	  	
  	end
  	
    respond_to do |format|
      format.html # index.html.erb
      format.js {throw 1}
    end
  end
  
  def show_partial
  	
		
  end
  
end