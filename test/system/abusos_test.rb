require "application_system_test_case"

class AbusosTest < ApplicationSystemTestCase
  setup do
    @abuso = abusos(:one)
  end

  test "visiting the index" do
    visit abusos_url
    assert_selector "h1", text: "Abusos"
  end

  test "should create abuso" do
    visit abusos_url
    click_on "New abuso"

    fill_in "Abuso presentado", with: @abuso.abuso_presentado
    fill_in "Cliente", with: @abuso.cliente
    fill_in "Costo total", with: @abuso.costo_total
    fill_in "Fecha", with: @abuso.fecha
    fill_in "Operador", with: @abuso.operador
    fill_in "Reporta", with: @abuso.reporta
    fill_in "Tipo abuso", with: @abuso.tipo_abuso
    fill_in "Tipo contrato", with: @abuso.tipo_contrato
    fill_in "Unidad", with: @abuso.unidad
    click_on "Create Abuso"

    assert_text "Abuso was successfully created"
    click_on "Back"
  end

  test "should update Abuso" do
    visit abuso_url(@abuso)
    click_on "Edit this abuso", match: :first

    fill_in "Abuso presentado", with: @abuso.abuso_presentado
    fill_in "Cliente", with: @abuso.cliente
    fill_in "Costo total", with: @abuso.costo_total
    fill_in "Fecha", with: @abuso.fecha
    fill_in "Operador", with: @abuso.operador
    fill_in "Reporta", with: @abuso.reporta
    fill_in "Tipo abuso", with: @abuso.tipo_abuso
    fill_in "Tipo contrato", with: @abuso.tipo_contrato
    fill_in "Unidad", with: @abuso.unidad
    click_on "Update Abuso"

    assert_text "Abuso was successfully updated"
    click_on "Back"
  end

  test "should destroy Abuso" do
    visit abuso_url(@abuso)
    click_on "Destroy this abuso", match: :first

    assert_text "Abuso was successfully destroyed"
  end
end
