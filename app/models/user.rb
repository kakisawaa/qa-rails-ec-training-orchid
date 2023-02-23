class User < ApplicationRecord
  belongs_to :user_classification
  has_many :products, dependent: :destroy
  has_secure_password
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_ZIPCODE_PHONENUMBER_REGEX = /\A[0-9]+\z/
  validates :password, presence: true, length: { in: 6..15 }, format: { with: VALID_PASSWORD_REGEX }, allow_nil: true
  validates :last_name, presence: true, length: { maximum: 10 }
  validates :first_name, presence: true, length: { maximum: 10 }
  validates :zipcode, presence: true, length: { is: 7 }, format: { with: VALID_ZIPCODE_PHONENUMBER_REGEX }
  validates :prefecture, presence: true, length: { maximum: 5 }
  validates :municipality, presence: true, length: { maximum: 10 }
  validates :address, presence: true, length: { maximum: 15 }
  validates :apartments, presence: true, length: { maximum: 20 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :phone_number, presence: true, length: { maximum: 15 }, format: { with: VALID_ZIPCODE_PHONENUMBER_REGEX }
end
