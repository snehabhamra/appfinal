class ProductsController < ApplicationController
    before_action :set_product, only: %i[ :create, :show, :edit, :update, :destroy ]

    helper_method :profile

    # GET /products or /products.json
    def index
      @products = Product.all
    end
  
    # GET /products/1 or /products/1.json
    def show
      @product = Product.find_by(params[:product_id])
    end
  
    # GET /products/new
    def new
      @product = Product.new
    end
  
    def seller_id
      current_user = Seller.id
    end
  
    # POST /products or /products.json
    def create
      @product = Product.create(params[:product_id])
      if @product.save!
        redirect_to products_path(@product)
      end
    end
  
    def update
        @product = Product.find_by(product_params[:product_id])
            if @product.update(product_params)
                redirect_to products_path(@product)
            end
    end
  
    # DELETE /products/1 or /products/1.json
    def destroy
        @product = Product.delete(params[:id])
        redirect_to products_path
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
        def params_product
            @product = Product.find_by(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def product_params
            params.permit(:name, :description, :price, :category, :picture, :buyer_id, :seller_id, :product_id)
        end
end