class TargetgroupsController < ApplicationController
  before_action :set_targetgroup, only: [:show, :edit, :update, :destroy]

  # GET /targetgroups
  # GET /targetgroups.json
  def index
    @targetgroups = Targetgroup.all
  end

  # GET /targetgroups/1
  # GET /targetgroups/1.json
  def show
    @groups = TargetgroupsResource.where('targetgroup_id = ? and resource_id is not NULL', @targetgroup.id).select('targetgroup_id, resource_id').distinct

  end

  # GET /targetgroups/new
  def new
    @targetgroup = Targetgroup.new
  end

  # GET /targetgroups/1/edit
  def edit
    @basename = Targetgroup::Translation.where('targetgroup_id=? and locale = ?', params[:id], :en).limit(1)
  end

  # POST /targetgroups
  # POST /targetgroups.json
  def create
    @targetgroup = Targetgroup.new(targetgroup_params)

    respond_to do |format|
      if @targetgroup.save
        format.html { redirect_to @targetgroup, notice: 'Targetgroup was successfully created.' }
        format.json { render :show, status: :created, location: @targetgroup }
      else
        format.html { render :new }
        format.json { render json: @targetgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /targetgroups/1
  # PATCH/PUT /targetgroups/1.json
  def update
    respond_to do |format|
      if @targetgroup.update(targetgroup_params)
        format.html { redirect_to @targetgroup, notice: 'Targetgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @targetgroup }
      else
        format.html { render :edit }
        format.json { render json: @targetgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /targetgroups/1
  # DELETE /targetgroups/1.json
  def destroy
    @targetgroup.destroy
    respond_to do |format|
      format.html { redirect_to targetgroups_url, notice: 'Targetgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_targetgroup
      @targetgroup = Targetgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def targetgroup_params
      params.require(:targetgroup).permit(:name)
    end
end
