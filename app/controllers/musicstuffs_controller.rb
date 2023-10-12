class MusicstuffsController < ApplicationController
  before_action :set_musicstuff, only: %i[ show edit update destroy ]

  # GET /musicstuffs or /musicstuffs.json
  def index
    @musicstuffs = Musicstuff.all
  end

  # GET /musicstuffs/1 or /musicstuffs/1.json
  def show
  end

  # GET /musicstuffs/new
  def new
    @musicstuff = Musicstuff.new
  end

  # GET /musicstuffs/1/edit
  def edit
  end

  # POST /musicstuffs or /musicstuffs.json
  def create
    @musicstuff = Musicstuff.new(musicstuff_params)

    respond_to do |format|
      if @musicstuff.save
        format.html { redirect_to musicstuff_url(@musicstuff), notice: "Musicstuff was successfully created." }
        format.json { render :show, status: :created, location: @musicstuff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicstuffs/1 or /musicstuffs/1.json
  def update
    respond_to do |format|
      if @musicstuff.update(musicstuff_params)
        format.html { redirect_to musicstuff_url(@musicstuff), notice: "Musicstuff was successfully updated." }
        format.json { render :show, status: :ok, location: @musicstuff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicstuffs/1 or /musicstuffs/1.json
  def destroy
    @musicstuff.destroy

    respond_to do |format|
      format.html { redirect_to musicstuffs_url, notice: "Musicstuff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicstuff
      @musicstuff = Musicstuff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicstuff_params
      params.require(:musicstuff).permit(:image, :name)
    end
end
