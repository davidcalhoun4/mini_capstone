class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    @product.save
    render "show.json.jb"
  
  end
  
end


# note you can point create and update controller action to show.json.jb