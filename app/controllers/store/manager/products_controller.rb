class Store::Manager::ProductsController < ApplicationController
  # GET /store/manager/products
  # GET /store/manager/products.json
  def index
    @store_manager_products = Store::Manager::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_products }
    end
  end

  # GET /store/manager/products/1
  # GET /store/manager/products/1.json
  def show
    @store_manager_product = Store::Manager::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_product }
    end
  end

  # GET /store/manager/products/new
  # GET /store/manager/products/new.json
  def new
    @store_manager_product = Store::Manager::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_product }
    end
  end

  # GET /store/manager/products/1/edit
  def edit
    @store_manager_product = Store::Manager::Product.find(params[:id])
  end

  # POST /store/manager/products
  # POST /store/manager/products.json
  def create
    @store_manager_product = Store::Manager::Product.new(params[:store_manager_product])

    respond_to do |format|
      if @store_manager_product.save
        format.html { redirect_to @store_manager_product, notice: 'Product was successfully created.' }
        format.json { render json: @store_manager_product, status: :created, location: @store_manager_product }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/products/1
  # PUT /store/manager/products/1.json
  def update
    @store_manager_product = Store::Manager::Product.find(params[:id])

    respond_to do |format|
      if @store_manager_product.update_attributes(params[:store_manager_product])
        format.html { redirect_to @store_manager_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/products/1
  # DELETE /store/manager/products/1.json
  def destroy
    @store_manager_product = Store::Manager::Product.find(params[:id])
    @store_manager_product.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_products_url }
      format.json { head :no_content }
    end
  end
end
