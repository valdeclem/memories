class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /memories
  # GET /memories.json
  def index
    @memories
    redirect_to "/perso"
  end

  def my_memories
    @memories = current_user.memories
  end
  def tl_memories
    @memories = current_user.memories
    @hash = Gmaps4rails.build_markers(Memory.all) do |memo, marker|
    marker.lat memo.latitude
    marker.lng memo.longitude
    marker.infowindow memo.histoire
    # marker.picture ({
    #     "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
    #     "width":  32,
    #     "height": 32
    #   })
end
  end

  # GET /memories/1
  # GET /memories/1.json
  def show
  end

  # GET /memories/new
  def new
    @memory = Memory.new
  end

  # GET /memories/1/edit
  def edit
  end

  # POST /memories
  # POST /memories.json
  def create
    @memory = Memory.new(memory_params)
      if @memory.save
        redirect_to "/perso", info: 'Votre souvenir a bien été créé'
      else
        render :new
      end
  end

  # PATCH/PUT /memories/1
  # PATCH/PUT /memories/1.json
  def update
    respond_to do |format|
      if @memory.update(memory_params)
        format.html { redirect_to @memory, info: 'Votre souvenir a bien été modifié' }
        format.json { render :show, status: :ok, location: @memory }
      else
        format.html { render :edit }
        format.json { render json: @memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memories/1
  # DELETE /memories/1.json
  def destroy
    @memory.destroy
    respond_to do |format|
      format.html { redirect_to memories_url, info: 'Votre souvenir a été supprimé' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory
      @memory = Memory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memory_params
      params.require(:memory).permit(:histoire, :title, :category, :user_id, :adress, :date)
    end
end
