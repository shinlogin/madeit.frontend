class Store::Manager::IndicesController < ApplicationController
  # GET /store/manager/indices
  # GET /store/manager/indices.json
  def index
    @store_manager_indices = Store::Manager::Index.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_indices }
    end
  end

  # GET /store/manager/indices/1
  # GET /store/manager/indices/1.json
  def show
    @store_manager_index = Store::Manager::Index.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_index }
    end
  end

  # GET /store/manager/indices/new
  # GET /store/manager/indices/new.json
  def new
    @store_manager_index = Store::Manager::Index.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_index }
    end
  end

  # GET /store/manager/indices/1/edit
  def edit
    @store_manager_index = Store::Manager::Index.find(params[:id])
  end

  # POST /store/manager/indices
  # POST /store/manager/indices.json
  def create
    @store_manager_index = Store::Manager::Index.new(params[:store_manager_index])

    respond_to do |format|
      if @store_manager_index.save
        format.html { redirect_to @store_manager_index, notice: 'Index was successfully created.' }
        format.json { render json: @store_manager_index, status: :created, location: @store_manager_index }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/indices/1
  # PUT /store/manager/indices/1.json
  def update
    @store_manager_index = Store::Manager::Index.find(params[:id])

    respond_to do |format|
      if @store_manager_index.update_attributes(params[:store_manager_index])
        format.html { redirect_to @store_manager_index, notice: 'Index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/indices/1
  # DELETE /store/manager/indices/1.json
  def destroy
    @store_manager_index = Store::Manager::Index.find(params[:id])
    @store_manager_index.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_indices_url }
      format.json { head :no_content }
    end
  end
end
