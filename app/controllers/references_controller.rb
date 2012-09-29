class ReferencesController < ApplicationController

before_filter :authenticate_player!
  before_filter do 
  	unless current_player.admin?
	  	flash[:error] = "Sorry we are still building that, please try again later!"
	    redirect_to root_path 
    end
  end


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
  	@klass = params[:klass].constantize.find(params[:id]) 
  	@reference = params[:klass]
  	respond_to do |format|
      format.js
    end
  end
  
  def show_epic
  	@klass = params[:klass].constantize.find(params[:id]) 
  	@reference = params[:klass]
  	respond_to do |format|
      format.js
    end
  end
  
end