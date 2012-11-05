class Store::Manager::Products::AddsController < ApplicationController
  # GET /store/manager/products/adds
  # GET /store/manager/products/adds.json
  def index
    @store_manager_products_adds = Store::Manager::Products::Add.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_products_adds }
    end
  end

  # GET /store/manager/products/adds/1
  # GET /store/manager/products/adds/1.json
  def show
    @store_manager_products_add = Store::Manager::Products::Add.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_products_add }
    end
  end

  # GET /store/manager/products/adds/new
  # GET /store/manager/products/adds/new.json
  def new
    @store_manager_products_add = Store::Manager::Products::Add.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_products_add }
    end
  end

  # GET /store/manager/products/adds/1/edit
  def edit
    @store_manager_products_add = Store::Manager::Products::Add.find(params[:id])
  end

  # POST /store/manager/products/adds
  # POST /store/manager/products/adds.json
  def create
    @store_manager_products_add = Store::Manager::Products::Add.new(params[:store_manager_products_add])

    respond_to do |format|
      if @store_manager_products_add.save
        format.html { redirect_to @store_manager_products_add, notice: 'Add was successfully created.' }
        format.json { render json: @store_manager_products_add, status: :created, location: @store_manager_products_add }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_products_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/products/adds/1
  # PUT /store/manager/products/adds/1.json
  def update
    @store_manager_products_add = Store::Manager::Products::Add.find(params[:id])

    respond_to do |format|
      if @store_manager_products_add.update_attributes(params[:store_manager_products_add])
        format.html { redirect_to @store_manager_products_add, notice: 'Add was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_products_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/products/adds/1
  # DELETE /store/manager/products/adds/1.json
  def destroy
    @store_manager_products_add = Store::Manager::Products::Add.find(params[:id])
    @store_manager_products_add.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_products_adds_url }
      format.json { head :no_content }
    end
  end
end
