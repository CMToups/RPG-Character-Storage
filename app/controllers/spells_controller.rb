class SpellsController < ApplicationController

	before_filter :authenticate_player!
  before_filter do 
    redirect_to root_path unless current_player.admin?
  end
  
  def index
    @spells = Spell.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spells }
    end
  end

  def show
    @spell = Spell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spell }
    end
  end

  def new
    @spell = Spell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spell }
    end
  end

  def edit
    @spell = Spell.find(params[:id])
  end

  def create
    @spell = Spell.new(params[:spell])

    respond_to do |format|
      if @spell.save
        format.html { redirect_to @spell, notice: 'Spell was successfully created.' }
        format.json { render json: @spell, status: :created, location: @spell }
      else
        format.html { render action: "new" }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @spell = Spell.find(params[:id])

    respond_to do |format|
      if @spell.update_attributes(params[:spell])
        format.html { redirect_to @spell, notice: 'Spell was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy

    respond_to do |format|
      format.html { redirect_to spells_path }
      format.json { head :no_content }
    end
  end

end
