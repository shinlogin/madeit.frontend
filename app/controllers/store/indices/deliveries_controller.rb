class Store::Indices::DeliveriesController < ApplicationController
  # GET /store/indices/deliveries
  # GET /store/indices/deliveries.json
  def index
    @store_indices_deliveries = Store::Indices::Delivery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_indices_deliveries }
    end
  end

  # GET /store/indices/deliveries/1
  # GET /store/indices/deliveries/1.json
  def show
    @store_indices_delivery = Store::Indices::Delivery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_indices_delivery }
    end
  end

  # GET /store/indices/deliveries/new
  # GET /store/indices/deliveries/new.json
  def new
    @store_indices_delivery = Store::Indices::Delivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_indices_delivery }
    end
  end

  # GET /store/indices/deliveries/1/edit
  def edit
    @store_indices_delivery = Store::Indices::Delivery.find(params[:id])
  end

  # POST /store/indices/deliveries
  # POST /store/indices/deliveries.json
  def create
    @store_indices_delivery = Store::Indices::Delivery.new(params[:store_indices_delivery])

    respond_to do |format|
      if @store_indices_delivery.save
        format.html { redirect_to @store_indices_delivery, notice: 'Delivery was successfully created.' }
        format.json { render json: @store_indices_delivery, status: :created, location: @store_indices_delivery }
      else
        format.html { render action: "new" }
        format.json { render json: @store_indices_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/indices/deliveries/1
  # PUT /store/indices/deliveries/1.json
  def update
    @store_indices_delivery = Store::Indices::Delivery.find(params[:id])

    respond_to do |format|
      if @store_indices_delivery.update_attributes(params[:store_indices_delivery])
        format.html { redirect_to @store_indices_delivery, notice: 'Delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_indices_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/indices/deliveries/1
  # DELETE /store/indices/deliveries/1.json
  def destroy
    @store_indices_delivery = Store::Indices::Delivery.find(params[:id])
    @store_indices_delivery.destroy

    respond_to do |format|
      format.html { redirect_to store_indices_deliveries_url }
      format.json { head :no_content }
    end
  end
end
