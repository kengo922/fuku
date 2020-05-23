class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :show, :update]
  
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

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      flash[:alert] = "配色を選択して下さい！"
      redirect_to edit_product_path
    end
  end
  
  private
  def product_params
    params.require(:product).permit(product_color:[])
  end
 
  def set_product
    @product = Product.find(params[:id])
    # :edit, :update, :showにitem.idを与える必要がある為、記述した
  end

end


