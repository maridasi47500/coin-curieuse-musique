class TonesController < ApplicationController
  before_action :set_tone, only: %i[ show edit update destroy ]

  # GET /tones or /tones.json
  def index
    @tones = Tone.all+[Tone.new(name: "aucun")]
    @tone=Tone.find_by(name:params[:tone])

    if params[:tone]=="aucun"
      @videos=Video.all.where(tone_id: nil)
    elsif @tone

      @videos=Video.all.where(tone_id: @tone.id)
    else
      @videos=[]
    end
  end

  # GET /tones/1 or /tones/1.json
  def show
    @tones = Tone.all+[Tone.new(name: "aucun")]
  end

  # GET /tones/new
  def new
    @tone = Tone.new
  end

  # GET /tones/1/edit
  def edit
  end

  # POST /tones or /tones.json
  def create
    @tone = Tone.new(tone_params)

    respond_to do |format|
      if @tone.save
        format.html { redirect_to tone_url(@tone), notice: "Tone was successfully created." }
        format.json { render :show, status: :created, location: @tone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tones/1 or /tones/1.json
  def update
    respond_to do |format|
      if @tone.update(tone_params)
        format.html { redirect_to tone_url(@tone), notice: "Tone was successfully updated." }
        format.json { render :show, status: :ok, location: @tone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tones/1 or /tones/1.json
  def destroy
    @tone.destroy

    respond_to do |format|
      format.html { redirect_to tones_url, notice: "Tone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tone
      @tone = Tone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tone_params
      params.require(:tone).permit(:name)
    end
end
