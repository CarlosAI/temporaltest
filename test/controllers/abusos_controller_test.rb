require "test_helper"

class AbusosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abuso = abusos(:one)
  end

  test "should get index" do
    get abusos_url
    assert_response :success
  end

  test "should get new" do
    get new_abuso_url
    assert_response :success
  end

  test "should create abuso" do
    assert_difference("Abuso.count") do
      post abusos_url, params: { abuso: { abuso_presentado: @abuso.abuso_presentado, cliente: @abuso.cliente, costo_total: @abuso.costo_total, fecha: @abuso.fecha, operador: @abuso.operador, reporta: @abuso.reporta, tipo_abuso: @abuso.tipo_abuso, tipo_contrato: @abuso.tipo_contrato, unidad: @abuso.unidad } }
    end

    assert_redirected_to abuso_url(Abuso.last)
  end

  test "should show abuso" do
    get abuso_url(@abuso)
    assert_response :success
  end

  test "should get edit" do
    get edit_abuso_url(@abuso)
    assert_response :success
  end

  test "should update abuso" do
    patch abuso_url(@abuso), params: { abuso: { abuso_presentado: @abuso.abuso_presentado, cliente: @abuso.cliente, costo_total: @abuso.costo_total, fecha: @abuso.fecha, operador: @abuso.operador, reporta: @abuso.reporta, tipo_abuso: @abuso.tipo_abuso, tipo_contrato: @abuso.tipo_contrato, unidad: @abuso.unidad } }
    assert_redirected_to abuso_url(@abuso)
  end

  test "should destroy abuso" do
    assert_difference("Abuso.count", -1) do
      delete abuso_url(@abuso)
    end

    assert_redirected_to abusos_url
  end
end
