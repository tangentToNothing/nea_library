class MaterialtypesController < ApplicationController
  before_action :set_materialtype, only: [:show, :edit, :update, :destroy]

  # GET /materialtypes
  # GET /materialtypes.json
  def index
    @materialtypes = Materialtype.all
  end

  # GET /materialtypes/1
  # GET /materialtypes/1.json
  def show
  end

  # GET /materialtypes/new
  def new
    @materialtype = Materialtype.new
  end

  # GET /materialtypes/1/edit
  def edit
  end

  # POST /materialtypes
  # POST /materialtypes.json
  def create
    @materialtype = Materialtype.new(materialtype_params)

    respond_to do |format|
      if @materialtype.save
        format.html { redirect_to @materialtype, notice: 'Materialtype was successfully created.' }
        format.json { render :show, status: :created, location: @materialtype }
      else
        format.html { render :new }
        format.json { render json: @materialtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materialtypes/1
  # PATCH/PUT /materialtypes/1.json
  def update
    respond_to do |format|
      if @materialtype.update(materialtype_params)
        format.html { redirect_to @materialtype, notice: 'Materialtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @materialtype }
      else
        format.html { render :edit }
        format.json { render json: @materialtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materialtypes/1
  # DELETE /materialtypes/1.json
  def destroy
    @materialtype.destroy
    respond_to do |format|
      format.html { redirect_to materialtypes_url, notice: 'Materialtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materialtype
      @materialtype = Materialtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materialtype_params
      params.require(:materialtype).permit(:name)
    end
end
