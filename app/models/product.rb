class Product < ApplicationRecord

  belongs_to :supplier
  # under the hood:
  # def supplier
    # Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories


  validates :name,  presence: true

  validates :name, uniqueness: true

  # or // validates :name, presence: true, uniqueness: true
  # adds lines together from same instance 

  validates :price,  numericality: { greater_than: 0}

  validates :description, length: { minimum: 2}
  # { in: 10...500 }

  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "incorrect file format (must be .png, .jpg, or .jpeg)", multiline: true





  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax 
  end


end
