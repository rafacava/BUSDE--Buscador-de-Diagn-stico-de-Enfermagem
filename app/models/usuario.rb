class Usuario < ApplicationRecord
    VALID_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email, presence: true, length: { minimum: 5 },
        format: { with: VALID_EMAIL }, uniqueness: true
    has_secure_password
    #se quiser colocar validações de senha é nesse campo
end
