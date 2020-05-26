class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update]
  
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
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @product_head_array = @product.head_color.split(",")
    @product_body_array = @product.boy_color.split(",")
    @product_leg_array = @product.leg_color.split(",")
    @product_shoes_array = @product.shoes_color.split(",")
    @Colors = Color.all
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
    params.require(:product).permit(head_color:[], boy_color:[], leg_color:[], shoes_color:[])
  end
 
  def set_product
    @product = Product.find(params[:id])
  end

end



