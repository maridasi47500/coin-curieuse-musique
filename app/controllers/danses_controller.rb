class DansesController < ApplicationController
  before_action :set_danse, only: %i[ show edit update destroy ]
  protect_from_forgery except: [:mydanse]

  # GET /danses or /danses.json
  def mydanse
    @danse = Danse.find params[:myid]
    render partial: "danses/danse#{params[:mylayout]}", locals:{danse:@danse},layout:false
  end
  def index
    @danses = Danse.all
  end

  # GET /danses/1 or /danses/1.json
  def show
  end

  # GET /danses/new
  def new
    @danse = Danse.new
  end

  # GET /danses/1/edit
  def edit
  end

  # POST /danses or /danses.json
  def create
    @danse = Danse.new(danse_params)

    respond_to do |format|
      if @danse.save
        format.html { redirect_to danse_url(@danse), notice: "Danse was successfully created." }
        format.json { render :show, status: :created, location: @danse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danses/1 or /danses/1.json
  def update
    respond_to do |format|
      if @danse.update(danse_params)
        format.html { redirect_to danse_url(@danse), notice: "Danse was successfully updated." }
        format.json { render :show, status: :ok, location: @danse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danses/1 or /danses/1.json
  def destroy
    @danse.destroy

    respond_to do |format|
      format.html { redirect_to danses_url, notice: "Danse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danse
      @danse = Danse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danse_params
      params.require(:danse).permit(:title, :body)
    end
end
