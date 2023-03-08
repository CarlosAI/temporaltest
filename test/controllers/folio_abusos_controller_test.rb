require "test_helper"

class FolioAbusosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folio_abuso = folio_abusos(:one)
  end

  test "should get index" do
    get folio_abusos_url
    assert_response :success
  end

  test "should get new" do
    get new_folio_abuso_url
    assert_response :success
  end

  test "should create folio_abuso" do
    assert_difference("FolioAbuso.count") do
      post folio_abusos_url, params: { folio_abuso: { abuso_presentado: @folio_abuso.abuso_presentado, cliente: @folio_abuso.cliente, costo_total: @folio_abuso.costo_total, fecha: @folio_abuso.fecha, folio: @folio_abuso.folio, operador: @folio_abuso.operador, reporta: @folio_abuso.reporta, tipo_abuso: @folio_abuso.tipo_abuso, tipo_contrato: @folio_abuso.tipo_contrato, unidad: @folio_abuso.unidad } }
    end

    assert_redirected_to folio_abuso_url(FolioAbuso.last)
  end

  test "should show folio_abuso" do
    get folio_abuso_url(@folio_abuso)
    assert_response :success
  end

  test "should get edit" do
    get edit_folio_abuso_url(@folio_abuso)
    assert_response :success
  end

  test "should update folio_abuso" do
    patch folio_abuso_url(@folio_abuso), params: { folio_abuso: { abuso_presentado: @folio_abuso.abuso_presentado, cliente: @folio_abuso.cliente, costo_total: @folio_abuso.costo_total, fecha: @folio_abuso.fecha, folio: @folio_abuso.folio, operador: @folio_abuso.operador, reporta: @folio_abuso.reporta, tipo_abuso: @folio_abuso.tipo_abuso, tipo_contrato: @folio_abuso.tipo_contrato, unidad: @folio_abuso.unidad } }
    assert_redirected_to folio_abuso_url(@folio_abuso)
  end

  test "should destroy folio_abuso" do
    assert_difference("FolioAbuso.count", -1) do
      delete folio_abuso_url(@folio_abuso)
    end

    assert_redirected_to folio_abusos_url
  end
end
