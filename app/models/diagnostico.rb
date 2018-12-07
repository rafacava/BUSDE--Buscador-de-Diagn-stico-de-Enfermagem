class Diagnostico < ApplicationRecord
        has_many :relatorios
        
    
    
    def self.search(search)
      where("nome LIKE ?", "%#{search}%") 
    end
end
