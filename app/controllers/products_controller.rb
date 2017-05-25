class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate, except: [:index]
    require 'rest-client'
    require 'json'
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
     end

    def create
        @product = Product.new(product_params)

        respond_to do |format|
            if @product.save
                format.html { redirect_to @product, notice: 'Product was successfully created.' }
                format.json { render :show, status: :created, location: @product }
            else
                format.html { render :new }
                format.json { render json: @product.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_params)
            redirect_to @product
        else
            render 'edit'
        end
    end

    def destroy
        @store.destroy
        respond_to do |format|
            format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    def getjson
        r = RestClient.get 'http://192.168.35.31/json_put'
        link = JSON.parse(r)
        puts link
     end

    def putjson
        @product = Product.all
        render @product.to_json
          # puts @product.class
          # respond_to do |format|
          #     format.json { render json: @product.to_json }
          # end
      end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:id, :name, :store_id, :description, :price, :quantity)
         end
end
