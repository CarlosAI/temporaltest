require "test_helper"

class ReporteAbusosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_abuso = reporte_abusos(:one)
  end

  test "should get index" do
    get reporte_abusos_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_abuso_url
    assert_response :success
  end

  test "should create reporte_abuso" do
    assert_difference("ReporteAbuso.count") do
      post reporte_abusos_url, params: { reporte_abuso: { descripcion: @reporte_abuso.descripcion, tipo_abuso: @reporte_abuso.tipo_abuso } }
    end

    assert_redirected_to reporte_abuso_url(ReporteAbuso.last)
  end

  test "should show reporte_abuso" do
    get reporte_abuso_url(@reporte_abuso)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_abuso_url(@reporte_abuso)
    assert_response :success
  end

  test "should update reporte_abuso" do
    patch reporte_abuso_url(@reporte_abuso), params: { reporte_abuso: { descripcion: @reporte_abuso.descripcion, tipo_abuso: @reporte_abuso.tipo_abuso } }
    assert_redirected_to reporte_abuso_url(@reporte_abuso)
  end

  test "should destroy reporte_abuso" do
    assert_difference("ReporteAbuso.count", -1) do
      delete reporte_abuso_url(@reporte_abuso)
    end

    assert_redirected_to reporte_abusos_url
  end
end
