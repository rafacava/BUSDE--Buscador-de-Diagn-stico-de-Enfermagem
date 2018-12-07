class Relatorio < ApplicationRecord
  belongs_to :diagnostico
  belongs_to :fator
  belongs_to :caracteristica
end
