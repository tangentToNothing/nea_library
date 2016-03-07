class TechnicalareasController < ApplicationController
  before_action :set_technicalarea, only: [:show, :edit, :update, :destroy]

  # GET /technicalareas
  # GET /technicalareas.json
  def index
    @technicalareas = Technicalarea.all
  end

  # GET /technicalareas/1
  # GET /technicalareas/1.json
  def show
    @techs = TechnicalareasResource.where('technicalarea_id = ? and resource_id is not NULL', @technicalarea.id).select('technicalarea_id, resource_id').distinct

  end

  # GET /technicalareas/new
  def new
    @technicalarea = Technicalarea.new
  end

  # GET /technicalareas/1/edit
  def edit
    @basename = Technicalarea::Translation.where('technicalarea_id=? and locale = ?', params[:id], :en).limit(1)
   #@engname = @technicalarea.with_translations('en')

  end

  # POST /technicalareas
  # POST /technicalareas.json
  def create
    @technicalarea = Technicalarea.new(technicalarea_params)

    respond_to do |format|
      if @technicalarea.save
        format.html { redirect_to @technicalarea, notice: 'Technicalarea was successfully created.' }
        format.json { render :show, status: :created, location: @technicalarea }
      else
        format.html { render :new }
        format.json { render json: @technicalarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technicalareas/1
  # PATCH/PUT /technicalareas/1.json
  def update
    respond_to do |format|
      if @technicalarea.update(technicalarea_params)
        format.html { redirect_to @technicalarea, notice: 'Technicalarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @technicalarea }
      else
        format.html { render :edit }
        format.json { render json: @technicalarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technicalareas/1
  # DELETE /technicalareas/1.json
  def destroy
    @technicalarea.destroy
    respond_to do |format|
      format.html { redirect_to technicalareas_url, notice: 'Technicalarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technicalarea
      @technicalarea = Technicalarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technicalarea_params
      params.require(:technicalarea).permit(:name)
    end
end
