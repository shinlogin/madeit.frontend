class Store::Policies::InformationController < ApplicationController
  # GET /store/policies/information
  # GET /store/policies/information.json
  def index
    @store_policies_information = Store::Policies::Information.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_policies_information }
    end
  end

  # GET /store/policies/information/1
  # GET /store/policies/information/1.json
  def show
    @store_policies_information = Store::Policies::Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_policies_information }
    end
  end

  # GET /store/policies/information/new
  # GET /store/policies/information/new.json
  def new
    @store_policies_information = Store::Policies::Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_policies_information }
    end
  end

  # GET /store/policies/information/1/edit
  def edit
    @store_policies_information = Store::Policies::Information.find(params[:id])
  end

  # POST /store/policies/information
  # POST /store/policies/information.json
  def create
    @store_policies_information = Store::Policies::Information.new(params[:store_policies_information])

    respond_to do |format|
      if @store_policies_information.save
        format.html { redirect_to @store_policies_information, notice: 'Information was successfully created.' }
        format.json { render json: @store_policies_information, status: :created, location: @store_policies_information }
      else
        format.html { render action: "new" }
        format.json { render json: @store_policies_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/policies/information/1
  # PUT /store/policies/information/1.json
  def update
    @store_policies_information = Store::Policies::Information.find(params[:id])

    respond_to do |format|
      if @store_policies_information.update_attributes(params[:store_policies_information])
        format.html { redirect_to @store_policies_information, notice: 'Information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_policies_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/policies/information/1
  # DELETE /store/policies/information/1.json
  def destroy
    @store_policies_information = Store::Policies::Information.find(params[:id])
    @store_policies_information.destroy

    respond_to do |format|
      format.html { redirect_to store_policies_information_index_url }
      format.json { head :no_content }
    end
  end
end
