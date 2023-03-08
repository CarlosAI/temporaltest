class AbusosController < ApplicationController
  before_action :set_abuso, only: %i[ show edit update destroy ]

  # GET /abusos or /abusos.json
  def index
    @abusos = Abuso.all
  end

  # GET /abusos/1 or /abusos/1.json
  def show
  end

  # GET /abusos/new
  def new
    @abuso = Abuso.new
  end

  # GET /abusos/1/edit
  def edit
  end

  # POST /abusos or /abusos.json
  def create
    @abuso = Abuso.new(abuso_params)

    respond_to do |format|
      if @abuso.save
        format.html { redirect_to abuso_url(@abuso), notice: "Abuso was successfully created." }
        format.json { render :show, status: :created, location: @abuso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abusos/1 or /abusos/1.json
  def update
    respond_to do |format|
      if @abuso.update(abuso_params)
        format.html { redirect_to abuso_url(@abuso), notice: "Abuso was successfully updated." }
        format.json { render :show, status: :ok, location: @abuso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abusos/1 or /abusos/1.json
  def destroy
    @abuso.destroy

    respond_to do |format|
      format.html { redirect_to abusos_url, notice: "Abuso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abuso
      @abuso = Abuso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abuso_params
      params.require(:abuso).permit(:cliente, :fecha, :unidad, :tipo_contrato, :operador, :tipo_abuso, :abuso_presentado, :costo_total, :reporta)
    end
end
