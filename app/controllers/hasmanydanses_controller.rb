class HasmanydansesController < ApplicationController
  before_action :set_hasmanydanse, only: %i[ show edit update destroy ]

  # GET /hasmanydanses or /hasmanydanses.json
  def index
    @hasmanydanses = Hasmanydanse.all
  end

  # GET /hasmanydanses/1 or /hasmanydanses/1.json
  def show
  end

  # GET /hasmanydanses/new
  def new
    @hasmanydanse = Hasmanydanse.new
  end

  # GET /hasmanydanses/1/edit
  def edit
  end

  # POST /hasmanydanses or /hasmanydanses.json
  def create
    @hasmanydanse = Hasmanydanse.new(hasmanydanse_params)

    respond_to do |format|
      if @hasmanydanse.save
        format.html { redirect_to piece_url(@hasmanydanse.piece), notice: "Hasmanydanse was successfully created." }
        format.json { render :show, status: :created, location: @hasmanydanse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hasmanydanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hasmanydanses/1 or /hasmanydanses/1.json
  def update
    respond_to do |format|
      if @hasmanydanse.update(hasmanydanse_params)
        format.html { redirect_to hasmanydanse_url(@hasmanydanse), notice: "Hasmanydanse was successfully updated." }
        format.json { render :show, status: :ok, location: @hasmanydanse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hasmanydanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hasmanydanses/1 or /hasmanydanses/1.json
  def destroy
    @hasmanydanse.destroy

    respond_to do |format|
      format.html { redirect_to hasmanydanses_url, notice: "Hasmanydanse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hasmanydanse
      @hasmanydanse = Hasmanydanse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hasmanydanse_params
      params.require(:hasmanydanse).permit(:piece_id, :danse_id, :mylayout)
    end
end
