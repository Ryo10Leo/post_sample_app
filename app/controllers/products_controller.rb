class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_url
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
    @product.picture.cache! unless @product.picture.blank?
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_url
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
                                :picture,:picture_cache)
  end
end
