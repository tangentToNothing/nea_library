class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  # GET /series
  # GET /series.json
  def index

    self.fixseries

    @series = Series.where('(pid = 0 or pid is NULL) and language=1')
  end


   def fixseries

     resourcelinks = Oldlink.where('ctype = ?', "t")
     serieslinks = Oldlink.where('ctype = ?', "s")
     seriesDads = Oldlink.select("pnid,ptnid,plang,ptitle").group('pnid,ptnid,plang,ptitle')


     resourcelinks.each do |rl|
       parent= rl.pnid
       rnode = Resource.find_by_nid(rl.cnid)
       if !rnode.nil?
         rnode.pnid = rl.pnid
         rnode.save
       end

     end

     serieslinks.each do |sl|
       Series.create([{nid: sl.cnid, name: sl.ctitle, tnid: sl.ctnid, pnid: sl.pnid}])

     end


     seriesDads.each do |sd|
       Series.create([{nid: sd.pnid, name: sd.ptitle, tnid: sd.ptnid, language: sd.plang}])

     end


     @newseries= Series.where('pid is NULL and pnid > 0')
     @newseries.each do |n|
       getparent= Series.find_by_nid(n.pnid)
       n.pid = getparent.id
       n.save
     end




   end

  # GET /series/1
  # GET /series/1.json
  def show
    @subseries = Series.where('pid = ?', @series.id)
    @materials = Resource.where('series_id = ?', @series.id)


  end

  # GET /series/new
  def new
    @series = Series.new
    if !params[:id].nil?
      @engver=Series.find_by_id(params[:id])
    end




  end

  # GET /series/1/edit
  def edit
  end

  # POST /series
  # POST /series.json
  def create
    @series = Series.new(series_params)

    respond_to do |format|
      if @series.save
        format.html { redirect_to @series, notice: 'Series was successfully created.' }
        format.json { render :show, status: :created, location: @series }
      else
        format.html { render :new }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series/1
  # PATCH/PUT /series/1.json
  def update
    respond_to do |format|
      if @series.update(series_params)
        format.html { redirect_to @series, notice: 'Series was successfully updated.' }
        format.json { render :show, status: :ok, location: @series }
      else
        format.html { render :edit }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1
  # DELETE /series/1.json
  def destroy
    @series.destroy
    respond_to do |format|
      format.html { redirect_to series_index_url, notice: 'Series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Series.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def series_params
      params.require(:series).permit(:name, :body, :nid, :pnid, :language, :tnid, :tid, :pid)
    end
end
