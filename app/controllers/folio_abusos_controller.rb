class FolioAbusosController < ApplicationController
  before_action :set_folio_abuso, only: %i[ show edit update destroy ]

  # GET /folio_abusos or /folio_abusos.json
  def index
    @folio_abusos = FolioAbuso.all.order("id desc")
    if params["filtro"].present?
      @folio_abusos = @folio_abusos.where("cliente LIKE ? OR folio LIKE ?", "%#{params["filtro"]}%", "%#{params["filtro"]}%")
    end
    @folio_abusos = @folio_abusos.paginate(page: params[:page], per_page: 10)
  end

  # GET /folio_abusos/1 or /folio_abusos/1.json
  def show
    el_folio_abuso = FolioAbuso.find_by_id(params["id"])
    @el_contrato = ["No encontrado"]
    @el_abuso = ["No encontrado"]
    if el_folio_abuso.present?
      @el_contrato = [Contrato.find_by_id(el_folio_abuso.tipo_contrato)]
    end
    if el_folio_abuso.present?
      @el_abuso = [ReporteAbuso.find_by_id(el_folio_abuso.tipo_abuso)]
    end

    puts "el abuso es"
    puts @el_contrato
    puts @el_abuso
  end

  # GET /folio_abusos/new
  def new
    @folio_abuso = FolioAbuso.new
    @contratos = Contrato.all
    @abusos = ReporteAbuso.all
  end

  # GET /folio_abusos/1/edit
  def edit
    #@folio_abuso = FolioAbuso.new
    @contratos = Contrato.all
    @abusos = ReporteAbuso.all
  end

  # POST /folio_abusos or /folio_abusos.json
  def create
    @folio_abuso = FolioAbuso.new(folio_abuso_params)

    respond_to do |format|
      if @folio_abuso.save
        @folio_abuso.folio = "#{'0'*(5-(@folio_abuso.id.to_s.size.to_i))}#{@folio_abuso.id}-#{Time.now.to_i}"
        @folio_abuso.save
        format.html { redirect_to folio_abuso_url(@folio_abuso), notice: "Folio abuso was successfully created." }
        format.json { render :show, status: :created, location: @folio_abuso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @folio_abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folio_abusos/1 or /folio_abusos/1.json
  def update
    respond_to do |format|
      if @folio_abuso.update(folio_abuso_params)
        format.html { redirect_to folio_abuso_url(@folio_abuso), notice: "Folio abuso was successfully updated." }
        format.json { render :show, status: :ok, location: @folio_abuso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @folio_abuso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folio_abusos/1 or /folio_abusos/1.json
  def destroy
    @folio_abuso.destroy

    respond_to do |format|
      format.html { redirect_to folio_abusos_url, notice: "Folio abuso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folio_abuso
      @folio_abuso = FolioAbuso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def folio_abuso_params
      params.require(:folio_abuso).permit(:folio, :cliente, :fecha, :unidad, :tipo_contrato, :operador, :tipo_abuso, :abuso_presentado, :costo_total, :reporta)
    end
end
