class Store::Manager::OrdersController < ApplicationController
  # GET /store/manager/orders
  # GET /store/manager/orders.json
  def index
    @store_manager_orders = Store::Manager::Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_orders }
    end
  end

  # GET /store/manager/orders/1
  # GET /store/manager/orders/1.json
  def show
    @store_manager_order = Store::Manager::Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_order }
    end
  end

  # GET /store/manager/orders/new
  # GET /store/manager/orders/new.json
  def new
    @store_manager_order = Store::Manager::Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_order }
    end
  end

  # GET /store/manager/orders/1/edit
  def edit
    @store_manager_order = Store::Manager::Order.find(params[:id])
  end

  # POST /store/manager/orders
  # POST /store/manager/orders.json
  def create
    @store_manager_order = Store::Manager::Order.new(params[:store_manager_order])

    respond_to do |format|
      if @store_manager_order.save
        format.html { redirect_to @store_manager_order, notice: 'Order was successfully created.' }
        format.json { render json: @store_manager_order, status: :created, location: @store_manager_order }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/orders/1
  # PUT /store/manager/orders/1.json
  def update
    @store_manager_order = Store::Manager::Order.find(params[:id])

    respond_to do |format|
      if @store_manager_order.update_attributes(params[:store_manager_order])
        format.html { redirect_to @store_manager_order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/orders/1
  # DELETE /store/manager/orders/1.json
  def destroy
    @store_manager_order = Store::Manager::Order.find(params[:id])
    @store_manager_order.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_orders_url }
      format.json { head :no_content }
    end
  end
end
