class Store::Manager::Indices::StatusesController < ApplicationController
  # GET /store/manager/indices/statuses
  # GET /store/manager/indices/statuses.json
  def index
    @store_manager_indices_statuses = Store::Manager::Indices::Status.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_indices_statuses }
    end
  end

  # GET /store/manager/indices/statuses/1
  # GET /store/manager/indices/statuses/1.json
  def show
    @store_manager_indices_status = Store::Manager::Indices::Status.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_indices_status }
    end
  end

  # GET /store/manager/indices/statuses/new
  # GET /store/manager/indices/statuses/new.json
  def new
    @store_manager_indices_status = Store::Manager::Indices::Status.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_indices_status }
    end
  end

  # GET /store/manager/indices/statuses/1/edit
  def edit
    @store_manager_indices_status = Store::Manager::Indices::Status.find(params[:id])
  end

  # POST /store/manager/indices/statuses
  # POST /store/manager/indices/statuses.json
  def create
    @store_manager_indices_status = Store::Manager::Indices::Status.new(params[:store_manager_indices_status])

    respond_to do |format|
      if @store_manager_indices_status.save
        format.html { redirect_to @store_manager_indices_status, notice: 'Status was successfully created.' }
        format.json { render json: @store_manager_indices_status, status: :created, location: @store_manager_indices_status }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_indices_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/indices/statuses/1
  # PUT /store/manager/indices/statuses/1.json
  def update
    @store_manager_indices_status = Store::Manager::Indices::Status.find(params[:id])

    respond_to do |format|
      if @store_manager_indices_status.update_attributes(params[:store_manager_indices_status])
        format.html { redirect_to @store_manager_indices_status, notice: 'Status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_indices_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/indices/statuses/1
  # DELETE /store/manager/indices/statuses/1.json
  def destroy
    @store_manager_indices_status = Store::Manager::Indices::Status.find(params[:id])
    @store_manager_indices_status.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_indices_statuses_url }
      format.json { head :no_content }
    end
  end
end
