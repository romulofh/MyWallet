class User < ApplicationRecord

    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :cpf, presence: true, length: { minimum: 11, maximum: 11 }

end