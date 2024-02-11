# frozen_string_literal: true
class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[show edit update]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :body, :image, :price, :action)
  end
end
