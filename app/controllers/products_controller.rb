class ProductsController < ApplicationController

  before_action :logged_in_user, only: [:new,:create,:edit,:update,:destroy]

  def index
    @product = Product.new
    @products = Product.all.paginate(page: params[:page], per_page: 9)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      @products = Product.all.paginate(page: params[:page], per_page: 9)
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      @products = Product.all.paginate(page: params[:page], per_page: 9)
    else
      render 'edit'
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description,
                                :picture)
  end
end
