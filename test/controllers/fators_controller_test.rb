require 'test_helper'

class FatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fator = fators(:one)
  end

  test "should get index" do
    get fators_url
    assert_response :success
  end

  test "should get new" do
    get new_fator_url
    assert_response :success
  end

  test "should create fator" do
    assert_difference('Fator.count') do
      post fators_url, params: { fator: { nome: @fator.nome } }
    end

    assert_redirected_to fator_url(Fator.last)
  end

  test "should show fator" do
    get fator_url(@fator)
    assert_response :success
  end

  test "should get edit" do
    get edit_fator_url(@fator)
    assert_response :success
  end

  test "should update fator" do
    patch fator_url(@fator), params: { fator: { nome: @fator.nome } }
    assert_redirected_to fator_url(@fator)
  end

  test "should destroy fator" do
    assert_difference('Fator.count', -1) do
      delete fator_url(@fator)
    end

    assert_redirected_to fators_url
  end
end
