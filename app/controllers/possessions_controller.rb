class PossessionsController < ApplicationController

	before_filter :authenticate_player!
  before_filter do 
    redirect_to root_path unless current_player.admin?
  end
  
  def index
    @possessions = Possession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @possessions }
    end
  end

  def show
    @possession = Possession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @possession }
    end
  end

  def new
    @possession = Possession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @possession }
    end
  end

  def edit
    @possession = Possession.find(params[:id])
  end

  def create
    @possession = Possession.new(params[:possession])

    respond_to do |format|
      if @possession.save
        format.html { redirect_to @possession, notice: 'Possession was successfully created.' }
        format.json { render json: @possession, status: :created, location: @possession }
      else
        format.html { render action: "new" }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @possession = Possession.find(params[:id])

    respond_to do |format|
      if @possession.update_attributes(params[:possession])
        format.html { redirect_to @possession, notice: 'Possession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @possession = Possession.find(params[:id])
    @possession.destroy

    respond_to do |format|
      format.html { redirect_to possessions_path }
      format.json { head :no_content }
    end
  end

end
