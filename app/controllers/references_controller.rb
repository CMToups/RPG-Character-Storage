class ReferencesController < ApplicationController


	layout("references")
  def index
  	respond_to do |format|
      format.html # index.html.erb
      format.js 
    end
  end
  
  def find
  	@klass = params[:klass].constantize 
  	@klass_search = @klass.all
  	respond_to do |format|
      format.js
    end
  end

  def show
  	@klass = params[:klass].constantize.new.from_json params[:jklass] 
  	@reference = params[:klass]
  	respond_to do |format|
      format.js
    end
  end
  
end