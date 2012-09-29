class MagicItemsController < ApplicationController
  # GET /magic_items
  # GET /magic_items.json
  def index
    @magic_items = MagicItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @magic_items }
    end
  end

  # GET /magic_items/1
  # GET /magic_items/1.json
  def show
    @magic_item = MagicItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @magic_item }
    end
  end

  # GET /magic_items/new
  # GET /magic_items/new.json
  def new
    @magic_item = MagicItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @magic_item }
    end
  end

  # GET /magic_items/1/edit
  def edit
    @magic_item = MagicItem.find(params[:id])
  end

  # POST /magic_items
  # POST /magic_items.json
  def create
    @magic_item = MagicItem.new(params[:magic_item])

    respond_to do |format|
      if @magic_item.save
        format.html { redirect_to @magic_item, notice: 'Magic item was successfully created.' }
        format.json { render json: @magic_item, status: :created, location: @magic_item }
      else
        format.html { render action: "new" }
        format.json { render json: @magic_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /magic_items/1
  # PUT /magic_items/1.json
  def update
    @magic_item = MagicItem.find(params[:id])

    respond_to do |format|
      if @magic_item.update_attributes(params[:magic_item])
        format.html { redirect_to @magic_item, notice: 'Magic item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @magic_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magic_items/1
  # DELETE /magic_items/1.json
  def destroy
    @magic_item = MagicItem.find(params[:id])
    @magic_item.destroy

    respond_to do |format|
      format.html { redirect_to magic_items_url }
      format.json { head :no_content }
    end
  end
end
