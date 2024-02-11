# frozen_string_literal: true

module Admin
  class ProductsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_product, only: %i[show edit update destroy]

    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to admin_product_path(@product)
      else
        render :new
      end
    end

    def show; end

    def edit; end

    def update
      if @product.update(product_params)
        redirect_to admin_product_path(@product)
      else
        render :edit
      end
    end

    def destroy
      @product.destroy!(product_params)
      redirect_to admin_products_path, status: :see_other
    end

    private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :body, :image, :price, :action)
    end
  end
end
