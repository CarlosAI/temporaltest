class ReporteAbusosController < ApplicationController
  before_action :set_reporte_abuso, only: %i[ show edit update destroy ]

  # GET /reporte_abusos or /reporte_abusos.json
  def index
    @reporte_abusos = ReporteAbuso.all
  end

  # GET /reporte_abusos/1 or /reporte_abusos/1.json
  def show
  end

  # GET /reporte_abusos/new
  def new
    @reporte_abuso = ReporteAbuso.new
  end

  # GET /reporte_abusos/1/edit
  def edit
  end

  # POST /reporte_abusos or /reporte_abusos.json
  def create
    @reporte_abuso = ReporteAbuso.new(reporte_abuso_params)

    respond_to do |format|
      if @reporte_abuso.save
        format.html { redirect_to reporte_abuso_url(@reporte_abuso), notice: "Reporte abuso was successfully created." }
        format.json { render :show, status: :created, location: @reporte_abuso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte_abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporte_abusos/1 or /reporte_abusos/1.json
  def update
    respond_to do |format|
      if @reporte_abuso.update(reporte_abuso_params)
        format.html { redirect_to reporte_abuso_url(@reporte_abuso), notice: "Reporte abuso was successfully updated." }
        format.json { render :show, status: :ok, location: @reporte_abuso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte_abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporte_abusos/1 or /reporte_abusos/1.json
  def destroy
    @reporte_abuso.destroy

    respond_to do |format|
      format.html { redirect_to reporte_abusos_url, notice: "Reporte abuso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte_abuso
      @reporte_abuso = ReporteAbuso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_abuso_params
      params.require(:reporte_abuso).permit(:tipo_abuso, :descripcion)
    end
end
