class Store::Manager::PoliciesController < ApplicationController
  # GET /store/manager/policies
  # GET /store/manager/policies.json
  def index
    @store_manager_policies = Store::Manager::Policy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_policies }
    end
  end

  # GET /store/manager/policies/1
  # GET /store/manager/policies/1.json
  def show
    @store_manager_policy = Store::Manager::Policy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_policy }
    end
  end

  # GET /store/manager/policies/new
  # GET /store/manager/policies/new.json
  def new
    @store_manager_policy = Store::Manager::Policy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_policy }
    end
  end

  # GET /store/manager/policies/1/edit
  def edit
    @store_manager_policy = Store::Manager::Policy.find(params[:id])
  end

  # POST /store/manager/policies
  # POST /store/manager/policies.json
  def create
    @store_manager_policy = Store::Manager::Policy.new(params[:store_manager_policy])

    respond_to do |format|
      if @store_manager_policy.save
        format.html { redirect_to @store_manager_policy, notice: 'Policy was successfully created.' }
        format.json { render json: @store_manager_policy, status: :created, location: @store_manager_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/policies/1
  # PUT /store/manager/policies/1.json
  def update
    @store_manager_policy = Store::Manager::Policy.find(params[:id])

    respond_to do |format|
      if @store_manager_policy.update_attributes(params[:store_manager_policy])
        format.html { redirect_to @store_manager_policy, notice: 'Policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/policies/1
  # DELETE /store/manager/policies/1.json
  def destroy
    @store_manager_policy = Store::Manager::Policy.find(params[:id])
    @store_manager_policy.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_policies_url }
      format.json { head :no_content }
    end
  end
end
