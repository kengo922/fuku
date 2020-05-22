class ProductsController < ApplicationController
  
  def index
    @products = Product.last(1)
    @products.each do |product|
      product_color = product.product_color
      gon.product_color = JSON.parse(product_color)
      # DBの値をJSON形に直す事で、JSで正常に値を使うことができる
    end
  end

  def new
    @product = Product.new
    @Colors = Color.all
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(product_color:[])
  end
 

end

