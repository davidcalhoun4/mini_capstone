class Api::ProductsController < ApplicationController
  
  # before_action :authenticate_admin, except: [:index, :show]
  #only admin has authorization to all methods

  def index
    @products = Product.all
    # if params[:category]
    #   @products = Product.categories
    # end

    # if params[:category]
    #   @products = Product.where("title iLIKE ?", "%#{params[:category]}%")
    # end

    # if params[:category]
    #   @products = @products.select do |product|
    #     product.categories
    #   end

    if params[:category]
      category = Category.find_by("name = ?", params[:category])
      @products = category.products 
    end

    if params[:discount]
       @products = @products.where("price < ?", 10)
    end

    if params[:search]
      @products = @products.where("name iLIKE ? OR description iLIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    end

    # sort by lowest price 
    # products?sort=price&sort_order=asc

    # sort by highest price
    # products?sort=price&sort_order=desc

    if params[:sort] == "price"

      if params[:sort_order] == "asc"
        @products = Product.order(price: :asc)
      else 
        @products = Product.order(price: :desc)
      end

    end

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
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
    )
    if @product.save
      render "show.json.jb"
    else 
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory

    if @product.save
      render "show.json.jb"
    else 
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    render json: {message: "you have destroyed this product!"}
  end
  
end


# note you can point create and update controller action to show.json.jb