class ReferencesController < ApplicationController

	layout("references")
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
   
end