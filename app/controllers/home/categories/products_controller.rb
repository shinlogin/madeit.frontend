class Home::Categories::ProductsController < ApplicationController
  # GET /home/categories/products
  # GET /home/categories/products.json
  def index
    @home_categories_products = Home::Categories::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products }
    end
  end

  # GET /home/categories/products/1
  # GET /home/categories/products/1.json
  def show
    @home_categories_product = Home::Categories::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_product }
    end
  end

  # GET /home/categories/products/new
  # GET /home/categories/products/new.json
  def new
    @home_categories_product = Home::Categories::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_product }
    end
  end

  # GET /home/categories/products/1/edit
  def edit
    @home_categories_product = Home::Categories::Product.find(params[:id])
  end

  # POST /home/categories/products
  # POST /home/categories/products.json
  def create
    @home_categories_product = Home::Categories::Product.new(params[:home_categories_product])

    respond_to do |format|
      if @home_categories_product.save
        format.html { redirect_to @home_categories_product, notice: 'Product was successfully created.' }
        format.json { render json: @home_categories_product, status: :created, location: @home_categories_product }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/1
  # PUT /home/categories/products/1.json
  def update
    @home_categories_product = Home::Categories::Product.find(params[:id])

    respond_to do |format|
      if @home_categories_product.update_attributes(params[:home_categories_product])
        format.html { redirect_to @home_categories_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/1
  # DELETE /home/categories/products/1.json
  def destroy
    @home_categories_product = Home::Categories::Product.find(params[:id])
    @home_categories_product.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_url }
      format.json { head :no_content }
    end
  end
end
