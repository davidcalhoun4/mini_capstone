class Order < ApplicationRecord

  belongs_to :user
  belongs_to :product
  # order belongs to single product

end
