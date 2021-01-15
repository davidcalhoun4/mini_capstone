class Api::ProductsController < ApplicationController

  def products_action
    @products = Product.all
    render "products.json.jb"
  end

  def product_action
    @product = Product.take
    render "product.json.jb"
  end
  
end
