class BuscaController < ApplicationController
  def diagnostico
  end

  def relatorio
    @relatorios = Relatorio.where(diagnostico: params[:id])
  end

  def fator
    @relatorios = Relatorio.where(fator: params[:id])
  end

  def caracteristica
    @relatorios = Relatorio.where(caracteristica: params[:id])
  end
end
