class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @products.map do |product|
      product_color = product.product_color
      gon.product_color = product_color
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
