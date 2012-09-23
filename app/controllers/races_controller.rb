class RacesController < ApplicationController

  def index
    @races = Race.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @races }
    end
  end

  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race }
    end
  end

  def new
    @race = Race.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @race }
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def create
    @race = Race.new(params[:race])

    respond_to do |format|
      if @race.save
        format.html { redirect_to @race, notice: 'Race was successfully created.' }
        format.json { render json: @race, status: :created, location: @race }
      else
        format.html { render action: "new" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @race = Race.find(params[:id])

    respond_to do |format|
      if @race.update_attributes(params[:race])
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @race = Race.find(params[:id])
    @race.destroy

    respond_to do |format|
      format.html { redirect_to races_path }
      format.json { head :no_content }
    end
  end

end
