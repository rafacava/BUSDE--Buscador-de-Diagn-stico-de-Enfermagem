require 'test_helper'

class RelatoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio = relatorios(:one)
  end

  test "should get index" do
    get relatorios_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_url
    assert_response :success
  end

  test "should create relatorio" do
    assert_difference('Relatorio.count') do
      post relatorios_url, params: { relatorio: { caracteristica_id: @relatorio.caracteristica_id, diagnostico_id: @relatorio.diagnostico_id, fator_id: @relatorio.fator_id } }
    end

    assert_redirected_to relatorio_url(Relatorio.last)
  end

  test "should show relatorio" do
    get relatorio_url(@relatorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_url(@relatorio)
    assert_response :success
  end

  test "should update relatorio" do
    patch relatorio_url(@relatorio), params: { relatorio: { caracteristica_id: @relatorio.caracteristica_id, diagnostico_id: @relatorio.diagnostico_id, fator_id: @relatorio.fator_id } }
    assert_redirected_to relatorio_url(@relatorio)
  end

  test "should destroy relatorio" do
    assert_difference('Relatorio.count', -1) do
      delete relatorio_url(@relatorio)
    end

    assert_redirected_to relatorios_url
  end
end
