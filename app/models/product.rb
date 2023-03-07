class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sale_status
  belongs_to :product_status
  belongs_to :user
  has_many :purchases, dependent: :destroy
  has_many :order_details, dependent: :destroy

  def self.search(search)
    if search
      where(['product_name LIKE ?', "%#{search}%"]) 
    else
      all
    end
  end
end
