class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :show, :update]
  
  def index
    @products = Product.last(1)
    @products.each do |product|
      haed_color = product.haed_color
      boy_color = product.boy_color
      leg_color = product.leg_color
      shose_color = product.shose_color
      gon.haed_color = JSON.parse(haed_color)
      gon.boy_color = JSON.parse(boy_color)
      gon.leg_color = JSON.parse(leg_color)
      gon.shose_color = JSON.parse(shose_color)
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
    params.require(:product).permit(haed_color:[], boy_color:[], leg_color:[], shose_color:[])
  end
 
  def set_product
    @product = Product.find(params[:id])
  end

end



