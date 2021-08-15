class ProductsController < ApplicationController
    before_action :params_product, only: %i[ :create, :show, :edit, :update, :destroy ]

    # helper_method :profile

    # GET /products or /products.json
    def index
      @products = Product.all
    end
  
    # GET /products/1 or /products/1.json
    def show
      @product = Product.find(params[:id])
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
      @product = Product.create 
      if @product.save
        respond_to do |format|
          format.html { redirect_to products_path, notice: 'The product was successfully created.' }
        end
      else
        # changed the following line
        render :new
      end
    end
  
    def update
        @product = Product.find(params[:id])
        respond_to do |format|
            if @product.save
                format.html { redirect_to @product, notice: "Product was successfully updated." }
                format.json { render :show, status: :ok, location: @product }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @product.errors, status: :unprocessable_entity }
            end
        end
    end
  
    # DELETE /products/1 or /products/1.json
    def destroy
        Product.find(params[:id]).delete
        redirect_to products_path
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
        def params_product
            @product = Product.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def product_params
            params.require(:product).permit(:name, :description, :price, :category, :picture, :buyer_id, :seller_id)
        end
end

    