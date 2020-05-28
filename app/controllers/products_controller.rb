class ProductsController < ApplicationController

  def index
    @products = Product.last(1)
    @products.each do |product|
      head_color = product.head_color
      boy_color = product.boy_color
      leg_color = product.leg_color
      shoes_color = product.shoes_color
      gon.head_color = JSON.parse(head_color)
      gon.boy_color = JSON.parse(boy_color)
      gon.leg_color = JSON.parse(leg_color)
      gon.shoes_color = JSON.parse(shoes_color)
    end
  end

  def new
    @product = Product.new
    @Colors = Color.all
  end
  
  def create
    @product = Product.new(product_create_params)
    if @product.save
      redirect_to products_path
    else
      flash[:alert] = "配色を選択して下さい！"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @Colors = Color.all
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_create_params)
      redirect_to products_path
    else
      flash[:alert] = "配色を選択して下さい！"
      redirect_to edit_product_path
    end
  end

  def show
  end

  private
  def product_create_params
    params.require(:product).permit(head_color:[], boy_color:[], leg_color:[], shoes_color:[])
  end
 

end



