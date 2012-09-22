class RoleTypesController < ApplicationController
  # GET /RoleTypes
  # GET /RoleTypes.json
  def index
    @role_types = RoleType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @role_types }
    end
  end

  # GET /RoleTypes/1
  # GET /RoleTypes/1.json
  def show
    @role_type = RoleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role_type }
    end
  end

  # GET /RoleTypes/new
  # GET /RoleTypes/new.json
  def new
    @role_type = RoleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role_type }
    end
  end

  # GET /RoleTypes/1/edit
  def edit
    @role_type = RoleType.find(params[:id])
  end

  # POST /RoleTypes
  # POST /RoleTypes.json
  def create
    @role_type = RoleType.new(params[:role_type])

    respond_to do |format|
      if @role_type.save
        format.html { redirect_to @role_type, notice: 'RoleType was successfully created.' }
        format.json { render json: @role_type, status: :created, location: @role_type }
      else
        format.html { render action: "new" }
        format.json { render json: @role_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /RoleTypes/1
  # PUT /RoleTypes/1.json
  def update
    @role_type = RoleType.find(params[:id])

    respond_to do |format|
      if @role_type.update_attributes(params[:role_type])
        format.html { redirect_to @role_type, notice: 'RoleType was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @role_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /RoleTypes/1
  # DELETE /RoleTypes/1.json
  def destroy
    @role_type = RoleType.find(params[:id])
    @role_type.destroy

    respond_to do |format|
      format.html { redirect_to RoleTypes_url }
      format.json { head :no_content }
    end
  end
end
