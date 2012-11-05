class Home::Cart::Indices::ProductsController < ApplicationController
  # GET /home/cart/indices/products
  # GET /home/cart/indices/products.json
  def index
    @home_cart_indices_products = Home::Cart::Indices::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cart_indices_products }
    end
  end

  # GET /home/cart/indices/products/1
  # GET /home/cart/indices/products/1.json
  def show
    @home_cart_indices_product = Home::Cart::Indices::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cart_indices_product }
    end
  end

  # GET /home/cart/indices/products/new
  # GET /home/cart/indices/products/new.json
  def new
    @home_cart_indices_product = Home::Cart::Indices::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cart_indices_product }
    end
  end

  # GET /home/cart/indices/products/1/edit
  def edit
    @home_cart_indices_product = Home::Cart::Indices::Product.find(params[:id])
  end

  # POST /home/cart/indices/products
  # POST /home/cart/indices/products.json
  def create
    @home_cart_indices_product = Home::Cart::Indices::Product.new(params[:home_cart_indices_product])

    respond_to do |format|
      if @home_cart_indices_product.save
        format.html { redirect_to @home_cart_indices_product, notice: 'Product was successfully created.' }
        format.json { render json: @home_cart_indices_product, status: :created, location: @home_cart_indices_product }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cart_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/cart/indices/products/1
  # PUT /home/cart/indices/products/1.json
  def update
    @home_cart_indices_product = Home::Cart::Indices::Product.find(params[:id])

    respond_to do |format|
      if @home_cart_indices_product.update_attributes(params[:home_cart_indices_product])
        format.html { redirect_to @home_cart_indices_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cart_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/cart/indices/products/1
  # DELETE /home/cart/indices/products/1.json
  def destroy
    @home_cart_indices_product = Home::Cart::Indices::Product.find(params[:id])
    @home_cart_indices_product.destroy

    respond_to do |format|
      format.html { redirect_to home_cart_indices_products_url }
      format.json { head :no_content }
    end
  end
end
