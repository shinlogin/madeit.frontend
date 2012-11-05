class Store::Indices::ProductsController < ApplicationController
  # GET /store/indices/products
  # GET /store/indices/products.json
  def index
    @store_indices_products = Store::Indices::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_indices_products }
    end
  end

  # GET /store/indices/products/1
  # GET /store/indices/products/1.json
  def show
    @store_indices_product = Store::Indices::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_indices_product }
    end
  end

  # GET /store/indices/products/new
  # GET /store/indices/products/new.json
  def new
    @store_indices_product = Store::Indices::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_indices_product }
    end
  end

  # GET /store/indices/products/1/edit
  def edit
    @store_indices_product = Store::Indices::Product.find(params[:id])
  end

  # POST /store/indices/products
  # POST /store/indices/products.json
  def create
    @store_indices_product = Store::Indices::Product.new(params[:store_indices_product])

    respond_to do |format|
      if @store_indices_product.save
        format.html { redirect_to @store_indices_product, notice: 'Product was successfully created.' }
        format.json { render json: @store_indices_product, status: :created, location: @store_indices_product }
      else
        format.html { render action: "new" }
        format.json { render json: @store_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/indices/products/1
  # PUT /store/indices/products/1.json
  def update
    @store_indices_product = Store::Indices::Product.find(params[:id])

    respond_to do |format|
      if @store_indices_product.update_attributes(params[:store_indices_product])
        format.html { redirect_to @store_indices_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/indices/products/1
  # DELETE /store/indices/products/1.json
  def destroy
    @store_indices_product = Store::Indices::Product.find(params[:id])
    @store_indices_product.destroy

    respond_to do |format|
      format.html { redirect_to store_indices_products_url }
      format.json { head :no_content }
    end
  end
end
