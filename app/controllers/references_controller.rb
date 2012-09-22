class ReferencesController < ApplicationController

	layout("references")
  def index
  	@reference = params[:category] 
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end