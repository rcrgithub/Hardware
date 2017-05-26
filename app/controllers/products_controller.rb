class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
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
        @products = RestClient.get 'http://192.168.35.31:3000/json_put'
        puts 'antes'
        puts @products
        @product = JSON.parse(@products)
        render :index1
     end

    def putjson
        # if params_key?(:product_id)

        #  else
        @product = Product.all
        render json: @product
        end
    # end

    def putjson1
        quantid = params['key1']
        puts @product
        @product = Product.find_by_id(quantid)
        puts @product.quantity

        puts @product.quantity
        @product = @product.update(quantity: @product.quantity -= 1)
        render json: @product
      end

    def putjson2
        puts params[:id]
        @product = RestClient.patch 'http://192.168.35.31:3000/json_put1', 'key1' => params[:id]
        redirect_to json_get_path
      end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:id, :name, :store_id, :description, :price, :quantity)
         end
end
