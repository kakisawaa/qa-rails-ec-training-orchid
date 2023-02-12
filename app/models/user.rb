class User < ApplicationRecord
    belongs_to :user_classification
    has_many :products
    has_secure_password
end
