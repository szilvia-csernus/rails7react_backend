class User < ApplicationRecord
    has_secure_password
    has_many :notes, dependent: :destroy

    validates :username, :password, presence: true
    validates :username, uniqueness: true
end
