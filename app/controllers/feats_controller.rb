class FeatsController < ApplicationController

  def index
    @feats = Feat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feats }
    end
  end

  def show
    @feat = Feat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feat }
    end
  end

  def new
    @feat = Feat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feat }
    end
  end

  def edit
    @feat = Feat.find(params[:id])
  end

  def create
    @feat = Feat.new(params[:feat])

    respond_to do |format|
      if @feat.save
        format.html { redirect_to @feat, notice: 'Feat was successfully created.' }
        format.json { render json: @feat, status: :created, location: @feat }
      else
        format.html { render action: "new" }
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @feat = Feat.find(params[:id])

    respond_to do |format|
      if @feat.update_attributes(params[:feat])
        format.html { redirect_to @feat, notice: 'Feat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feat = Feat.find(params[:id])
    @feat.destroy

    respond_to do |format|
      format.html { redirect_to feats_path }
      format.json { head :no_content }
    end
  end

end
