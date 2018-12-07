require "application_system_test_case"

class RelatoriosTest < ApplicationSystemTestCase
  setup do
    @relatorio = relatorios(:one)
  end

  test "visiting the index" do
    visit relatorios_url
    assert_selector "h1", text: "Relatorios"
  end

  test "creating a Relatorio" do
    visit relatorios_url
    click_on "New Relatorio"

    fill_in "Caracteristica", with: @relatorio.caracteristica_id
    fill_in "Diagnostico", with: @relatorio.diagnostico_id
    fill_in "Fator", with: @relatorio.fator_id
    click_on "Create Relatorio"

    assert_text "Relatorio was successfully created"
    click_on "Back"
  end

  test "updating a Relatorio" do
    visit relatorios_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @relatorio.caracteristica_id
    fill_in "Diagnostico", with: @relatorio.diagnostico_id
    fill_in "Fator", with: @relatorio.fator_id
    click_on "Update Relatorio"

    assert_text "Relatorio was successfully updated"
    click_on "Back"
  end

  test "destroying a Relatorio" do
    visit relatorios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relatorio was successfully destroyed"
  end
end
