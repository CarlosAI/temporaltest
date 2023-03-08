require "application_system_test_case"

class FolioAbusosTest < ApplicationSystemTestCase
  setup do
    @folio_abuso = folio_abusos(:one)
  end

  test "visiting the index" do
    visit folio_abusos_url
    assert_selector "h1", text: "Folio abusos"
  end

  test "should create folio abuso" do
    visit folio_abusos_url
    click_on "New folio abuso"

    fill_in "Abuso presentado", with: @folio_abuso.abuso_presentado
    fill_in "Cliente", with: @folio_abuso.cliente
    fill_in "Costo total", with: @folio_abuso.costo_total
    fill_in "Fecha", with: @folio_abuso.fecha
    fill_in "Folio", with: @folio_abuso.folio
    fill_in "Operador", with: @folio_abuso.operador
    fill_in "Reporta", with: @folio_abuso.reporta
    fill_in "Tipo abuso", with: @folio_abuso.tipo_abuso
    fill_in "Tipo contrato", with: @folio_abuso.tipo_contrato
    fill_in "Unidad", with: @folio_abuso.unidad
    click_on "Create Folio abuso"

    assert_text "Folio abuso was successfully created"
    click_on "Back"
  end

  test "should update Folio abuso" do
    visit folio_abuso_url(@folio_abuso)
    click_on "Edit this folio abuso", match: :first

    fill_in "Abuso presentado", with: @folio_abuso.abuso_presentado
    fill_in "Cliente", with: @folio_abuso.cliente
    fill_in "Costo total", with: @folio_abuso.costo_total
    fill_in "Fecha", with: @folio_abuso.fecha
    fill_in "Folio", with: @folio_abuso.folio
    fill_in "Operador", with: @folio_abuso.operador
    fill_in "Reporta", with: @folio_abuso.reporta
    fill_in "Tipo abuso", with: @folio_abuso.tipo_abuso
    fill_in "Tipo contrato", with: @folio_abuso.tipo_contrato
    fill_in "Unidad", with: @folio_abuso.unidad
    click_on "Update Folio abuso"

    assert_text "Folio abuso was successfully updated"
    click_on "Back"
  end

  test "should destroy Folio abuso" do
    visit folio_abuso_url(@folio_abuso)
    click_on "Destroy this folio abuso", match: :first

    assert_text "Folio abuso was successfully destroyed"
  end
end
