require "application_system_test_case"

class ReporteAbusosTest < ApplicationSystemTestCase
  setup do
    @reporte_abuso = reporte_abusos(:one)
  end

  test "visiting the index" do
    visit reporte_abusos_url
    assert_selector "h1", text: "Reporte abusos"
  end

  test "should create reporte abuso" do
    visit reporte_abusos_url
    click_on "New reporte abuso"

    fill_in "Descripcion", with: @reporte_abuso.descripcion
    fill_in "Tipo abuso", with: @reporte_abuso.tipo_abuso
    click_on "Create Reporte abuso"

    assert_text "Reporte abuso was successfully created"
    click_on "Back"
  end

  test "should update Reporte abuso" do
    visit reporte_abuso_url(@reporte_abuso)
    click_on "Edit this reporte abuso", match: :first

    fill_in "Descripcion", with: @reporte_abuso.descripcion
    fill_in "Tipo abuso", with: @reporte_abuso.tipo_abuso
    click_on "Update Reporte abuso"

    assert_text "Reporte abuso was successfully updated"
    click_on "Back"
  end

  test "should destroy Reporte abuso" do
    visit reporte_abuso_url(@reporte_abuso)
    click_on "Destroy this reporte abuso", match: :first

    assert_text "Reporte abuso was successfully destroyed"
  end
end
