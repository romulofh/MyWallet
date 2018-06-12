class User < ApplicationRecord

    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :cpf, presence: true, length: { minimum: 11, maximum: 11 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false },
              length: { maximum: 60 }, format: { with: VALID_EMAIL_REGEX }

end