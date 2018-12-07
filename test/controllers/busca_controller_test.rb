require 'test_helper'

class BuscaControllerTest < ActionDispatch::IntegrationTest
  test "should get diagnostico" do
    get busca_diagnostico_url
    assert_response :success
  end

  test "should get relatorio" do
    get busca_relatorio_url
    assert_response :success
  end

  test "should get fator" do
    get busca_fator_url
    assert_response :success
  end

  test "should get caracteristica" do
    get busca_caracteristica_url
    assert_response :success
  end

end
