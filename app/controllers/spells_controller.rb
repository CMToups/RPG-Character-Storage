class SpellsController < ApplicationController
  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spells }
    end
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
    @spell = Spell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spell }
    end
  end

  # GET /spells/new
  # GET /spells/new.json
  def new
    @spell = Spell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spell }
    end
  end

  # GET /spells/1/edit
  def edit
    @spell = Spell.find(params[:id])
  end

  # POST /spells
  # POST /spells.json
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

  # PUT /spells/1
  # PUT /spells/1.json
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

  # DELETE /spells/1
  # DELETE /spells/1.json
  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy

    respond_to do |format|
      format.html { redirect_to spells_url }
      format.json { head :no_content }
    end
  end
end
