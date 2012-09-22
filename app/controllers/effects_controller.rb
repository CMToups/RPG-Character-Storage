class EffectsController < ApplicationController

  def index
    @effects = Effect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @effects }
    end
  end

  def show
    @effect = Effect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @effect }
    end
  end

  def new
    @effect = Effect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @effect }
    end
  end

  def edit
    @effect = Effect.find(params[:id])
  end

  def create
    @effect = Effect.new(params[:effect])

    respond_to do |format|
      if @effect.save
        format.html { redirect_to @effect, notice: 'Effect was successfully created.' }
        format.json { render json: @effect, status: :created, location: @effect }
      else
        format.html { render action: "new" }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @effect = Effect.find(params[:id])

    respond_to do |format|
      if @effect.update_attributes(params[:effect])
        format.html { redirect_to @effect, notice: 'Effect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @effect = Effect.find(params[:id])
    @effect.destroy

    respond_to do |format|
      format.html { redirect_to Effects_url }
      format.json { head :no_content }
    end
  end
  
end
