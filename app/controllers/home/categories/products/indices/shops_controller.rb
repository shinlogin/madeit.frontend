class Home::Categories::Products::Indices::ShopsController < ApplicationController
  # GET /home/categories/products/indices/shops
  # GET /home/categories/products/indices/shops.json
  def index
    @home_categories_products_indices_shops = Home::Categories::Products::Indices::Shop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_shops }
    end
  end

  # GET /home/categories/products/indices/shops/1
  # GET /home/categories/products/indices/shops/1.json
  def show
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_shop }
    end
  end

  # GET /home/categories/products/indices/shops/new
  # GET /home/categories/products/indices/shops/new.json
  def new
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_shop }
    end
  end

  # GET /home/categories/products/indices/shops/1/edit
  def edit
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.find(params[:id])
  end

  # POST /home/categories/products/indices/shops
  # POST /home/categories/products/indices/shops.json
  def create
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.new(params[:home_categories_products_indices_shop])

    respond_to do |format|
      if @home_categories_products_indices_shop.save
        format.html { redirect_to @home_categories_products_indices_shop, notice: 'Shop was successfully created.' }
        format.json { render json: @home_categories_products_indices_shop, status: :created, location: @home_categories_products_indices_shop }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/shops/1
  # PUT /home/categories/products/indices/shops/1.json
  def update
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_shop.update_attributes(params[:home_categories_products_indices_shop])
        format.html { redirect_to @home_categories_products_indices_shop, notice: 'Shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/shops/1
  # DELETE /home/categories/products/indices/shops/1.json
  def destroy
    @home_categories_products_indices_shop = Home::Categories::Products::Indices::Shop.find(params[:id])
    @home_categories_products_indices_shop.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_shops_url }
      format.json { head :no_content }
    end
  end
end
