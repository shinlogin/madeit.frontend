class Store::Manager::Policies::DeliveriesController < ApplicationController
  # GET /store/manager/policies/deliveries
  # GET /store/manager/policies/deliveries.json
  def index
    @store_manager_policies_deliveries = Store::Manager::Policies::Delivery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_policies_deliveries }
    end
  end

  # GET /store/manager/policies/deliveries/1
  # GET /store/manager/policies/deliveries/1.json
  def show
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_policies_delivery }
    end
  end

  # GET /store/manager/policies/deliveries/new
  # GET /store/manager/policies/deliveries/new.json
  def new
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_policies_delivery }
    end
  end

  # GET /store/manager/policies/deliveries/1/edit
  def edit
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.find(params[:id])
  end

  # POST /store/manager/policies/deliveries
  # POST /store/manager/policies/deliveries.json
  def create
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.new(params[:store_manager_policies_delivery])

    respond_to do |format|
      if @store_manager_policies_delivery.save
        format.html { redirect_to @store_manager_policies_delivery, notice: 'Delivery was successfully created.' }
        format.json { render json: @store_manager_policies_delivery, status: :created, location: @store_manager_policies_delivery }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_policies_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/policies/deliveries/1
  # PUT /store/manager/policies/deliveries/1.json
  def update
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.find(params[:id])

    respond_to do |format|
      if @store_manager_policies_delivery.update_attributes(params[:store_manager_policies_delivery])
        format.html { redirect_to @store_manager_policies_delivery, notice: 'Delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_policies_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/policies/deliveries/1
  # DELETE /store/manager/policies/deliveries/1.json
  def destroy
    @store_manager_policies_delivery = Store::Manager::Policies::Delivery.find(params[:id])
    @store_manager_policies_delivery.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_policies_deliveries_url }
      format.json { head :no_content }
    end
  end
end
