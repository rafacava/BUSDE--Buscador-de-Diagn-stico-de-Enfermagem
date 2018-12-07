class CreateRelatorios < ActiveRecord::Migration[5.2]
  def change
    create_table :relatorios do |t|
      t.references :diagnostico, foreign_key: true
      t.references :fator, foreign_key: true
      t.references :caracteristica, foreign_key: true

      t.timestamps
    end
  end
end
