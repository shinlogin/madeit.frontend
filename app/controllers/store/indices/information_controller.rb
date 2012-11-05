class Store::Indices::InformationController < ApplicationController
  # GET /store/indices/information
  # GET /store/indices/information.json
  def index
    @store_indices_information = Store::Indices::Information.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_indices_information }
    end
  end

  # GET /store/indices/information/1
  # GET /store/indices/information/1.json
  def show
    @store_indices_information = Store::Indices::Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_indices_information }
    end
  end

  # GET /store/indices/information/new
  # GET /store/indices/information/new.json
  def new
    @store_indices_information = Store::Indices::Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_indices_information }
    end
  end

  # GET /store/indices/information/1/edit
  def edit
    @store_indices_information = Store::Indices::Information.find(params[:id])
  end

  # POST /store/indices/information
  # POST /store/indices/information.json
  def create
    @store_indices_information = Store::Indices::Information.new(params[:store_indices_information])

    respond_to do |format|
      if @store_indices_information.save
        format.html { redirect_to @store_indices_information, notice: 'Information was successfully created.' }
        format.json { render json: @store_indices_information, status: :created, location: @store_indices_information }
      else
        format.html { render action: "new" }
        format.json { render json: @store_indices_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/indices/information/1
  # PUT /store/indices/information/1.json
  def update
    @store_indices_information = Store::Indices::Information.find(params[:id])

    respond_to do |format|
      if @store_indices_information.update_attributes(params[:store_indices_information])
        format.html { redirect_to @store_indices_information, notice: 'Information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_indices_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/indices/information/1
  # DELETE /store/indices/information/1.json
  def destroy
    @store_indices_information = Store::Indices::Information.find(params[:id])
    @store_indices_information.destroy

    respond_to do |format|
      format.html { redirect_to store_indices_information_index_url }
      format.json { head :no_content }
    end
  end
end
