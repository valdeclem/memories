class MapgsController < ApplicationController
  before_action :set_mapg, only: [:show, :edit, :update, :destroy]

  # GET /mapgs
  # GET /mapgs.json
  def index
    @mapgs = Mapg.all
  end

  # GET /mapgs/1
  # GET /mapgs/1.json
  def show
  end

  # GET /mapgs/new
  def new
    @mapg = Mapg.new
  end

  # GET /mapgs/1/edit
  def edit
  end

  # POST /mapgs
  # POST /mapgs.json
  def create
    @mapg = Mapg.new(mapg_params)

    respond_to do |format|
      if @mapg.save
        format.html { redirect_to @mapg, notice: 'Mapg was successfully created.' }
        format.json { render :show, status: :created, location: @mapg }
      else
        format.html { render :new }
        format.json { render json: @mapg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapgs/1
  # PATCH/PUT /mapgs/1.json
  def update
    respond_to do |format|
      if @mapg.update(mapg_params)
        format.html { redirect_to @mapg, notice: 'Mapg was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapg }
      else
        format.html { render :edit }
        format.json { render json: @mapg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapgs/1
  # DELETE /mapgs/1.json
  def destroy
    @mapg.destroy
    respond_to do |format|
      format.html { redirect_to mapgs_url, notice: 'Mapg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapg
      @mapg = Mapg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapg_params
      params.require(:mapg).permit(:latitude, :longitude, :adress)
    end
end
