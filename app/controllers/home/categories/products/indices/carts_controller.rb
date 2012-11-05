class Home::Categories::Products::Indices::CartsController < ApplicationController
  # GET /home/categories/products/indices/carts
  # GET /home/categories/products/indices/carts.json
  def index
    @home_categories_products_indices_carts = Home::Categories::Products::Indices::Cart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_carts }
    end
  end

  # GET /home/categories/products/indices/carts/1
  # GET /home/categories/products/indices/carts/1.json
  def show
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_cart }
    end
  end

  # GET /home/categories/products/indices/carts/new
  # GET /home/categories/products/indices/carts/new.json
  def new
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_cart }
    end
  end

  # GET /home/categories/products/indices/carts/1/edit
  def edit
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.find(params[:id])
  end

  # POST /home/categories/products/indices/carts
  # POST /home/categories/products/indices/carts.json
  def create
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.new(params[:home_categories_products_indices_cart])

    respond_to do |format|
      if @home_categories_products_indices_cart.save
        format.html { redirect_to @home_categories_products_indices_cart, notice: 'Cart was successfully created.' }
        format.json { render json: @home_categories_products_indices_cart, status: :created, location: @home_categories_products_indices_cart }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/carts/1
  # PUT /home/categories/products/indices/carts/1.json
  def update
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_cart.update_attributes(params[:home_categories_products_indices_cart])
        format.html { redirect_to @home_categories_products_indices_cart, notice: 'Cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/carts/1
  # DELETE /home/categories/products/indices/carts/1.json
  def destroy
    @home_categories_products_indices_cart = Home::Categories::Products::Indices::Cart.find(params[:id])
    @home_categories_products_indices_cart.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_carts_url }
      format.json { head :no_content }
    end
  end
end
