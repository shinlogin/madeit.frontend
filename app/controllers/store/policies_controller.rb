class Store::PoliciesController < ApplicationController
  # GET /store/policies
  # GET /store/policies.json
  def index
    @store_policies = Store::Policy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_policies }
    end
  end

  # GET /store/policies/1
  # GET /store/policies/1.json
  def show
    @store_policy = Store::Policy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_policy }
    end
  end

  # GET /store/policies/new
  # GET /store/policies/new.json
  def new
    @store_policy = Store::Policy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_policy }
    end
  end

  # GET /store/policies/1/edit
  def edit
    @store_policy = Store::Policy.find(params[:id])
  end

  # POST /store/policies
  # POST /store/policies.json
  def create
    @store_policy = Store::Policy.new(params[:store_policy])

    respond_to do |format|
      if @store_policy.save
        format.html { redirect_to @store_policy, notice: 'Policy was successfully created.' }
        format.json { render json: @store_policy, status: :created, location: @store_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @store_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/policies/1
  # PUT /store/policies/1.json
  def update
    @store_policy = Store::Policy.find(params[:id])

    respond_to do |format|
      if @store_policy.update_attributes(params[:store_policy])
        format.html { redirect_to @store_policy, notice: 'Policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/policies/1
  # DELETE /store/policies/1.json
  def destroy
    @store_policy = Store::Policy.find(params[:id])
    @store_policy.destroy

    respond_to do |format|
      format.html { redirect_to store_policies_url }
      format.json { head :no_content }
    end
  end
end
