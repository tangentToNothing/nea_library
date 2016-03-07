class TrainlanguagesController < ApplicationController
  before_action :set_trainlanguage, only: [:show, :edit, :update, :destroy]

  # GET /trainlanguages
  # GET /trainlanguages.json
  def index
    @trainlanguages = Trainlanguage.all
  end

  # GET /trainlanguages/1
  # GET /trainlanguages/1.json
  def show
  end

  # GET /trainlanguages/new
  def new
    @trainlanguage = Trainlanguage.new
  end

  # GET /trainlanguages/1/edit
  def edit
  end

  # POST /trainlanguages
  # POST /trainlanguages.json
  def create
    @trainlanguage = Trainlanguage.new(trainlanguage_params)

    respond_to do |format|
      if @trainlanguage.save
        format.html { redirect_to @trainlanguage, notice: 'Trainlanguage was successfully created.' }
        format.json { render :show, status: :created, location: @trainlanguage }
      else
        format.html { render :new }
        format.json { render json: @trainlanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainlanguages/1
  # PATCH/PUT /trainlanguages/1.json
  def update
    respond_to do |format|
      if @trainlanguage.update(trainlanguage_params)
        format.html { redirect_to @trainlanguage, notice: 'Trainlanguage was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainlanguage }
      else
        format.html { render :edit }
        format.json { render json: @trainlanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainlanguages/1
  # DELETE /trainlanguages/1.json
  def destroy
    @trainlanguage.destroy
    respond_to do |format|
      format.html { redirect_to trainlanguages_url, notice: 'Trainlanguage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainlanguage
      @trainlanguage = Trainlanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainlanguage_params
      params.require(:trainlanguage).permit(:name)
    end
end
