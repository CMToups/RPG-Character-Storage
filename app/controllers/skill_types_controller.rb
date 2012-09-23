class SkillTypesController < ApplicationController

  def index
    @skill_types = SkillType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skill_types }
    end
  end

  def show
    @skill_type = SkillType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill_type }
    end
  end

  def new
    @skill_type = SkillType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill_type }
    end
  end

  def edit
    @skill_type = SkillType.find(params[:id])
  end

  def create
    @skill_type = SkillType.new(params[:skill_type])

    respond_to do |format|
      if @skill_type.save
        format.html { redirect_to @skill_type, notice: 'SkillType was successfully created.' }
        format.json { render json: @skill_type, status: :created, location: @skill_type }
      else
        format.html { render action: "new" }
        format.json { render json: @skill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @skill_type = SkillType.find(params[:id])

    respond_to do |format|
      if @skill_type.update_attributes(params[:skill_type])
        format.html { redirect_to @skill_type, notice: 'SkillType was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill_type = SkillType.find(params[:id])
    @skill_type.destroy

    respond_to do |format|
      format.html { redirect_to skill_types_path }
      format.json { head :no_content }
    end
  end

end
