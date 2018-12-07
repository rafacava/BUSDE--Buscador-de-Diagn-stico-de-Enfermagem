class AddDefinicaoToDiagnosticos < ActiveRecord::Migration[5.2]
  def change
    add_column :diagnosticos, :definicao, :text
  end
end
