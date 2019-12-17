class ProductsController < ApplicationController
  def index
    @product = Product.new
    @products = Product.all
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
    @product = Product.new
    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      @products = Product.all
      respond_to do |format|
        format.js
        format.html
      end
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
    @product.picture.cache! unless @product.picture.blank?
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      respond_to do |format|
        @products = Product.all
        format.js
        format.html{redirect_to products_url}
      end
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
