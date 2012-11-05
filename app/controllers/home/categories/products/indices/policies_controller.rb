class Home::Categories::Products::Indices::PoliciesController < ApplicationController
  # GET /home/categories/products/indices/policies
  # GET /home/categories/products/indices/policies.json
  def index
    @home_categories_products_indices_policies = Home::Categories::Products::Indices::Policy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_policies }
    end
  end

  # GET /home/categories/products/indices/policies/1
  # GET /home/categories/products/indices/policies/1.json
  def show
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_policy }
    end
  end

  # GET /home/categories/products/indices/policies/new
  # GET /home/categories/products/indices/policies/new.json
  def new
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_policy }
    end
  end

  # GET /home/categories/products/indices/policies/1/edit
  def edit
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.find(params[:id])
  end

  # POST /home/categories/products/indices/policies
  # POST /home/categories/products/indices/policies.json
  def create
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.new(params[:home_categories_products_indices_policy])

    respond_to do |format|
      if @home_categories_products_indices_policy.save
        format.html { redirect_to @home_categories_products_indices_policy, notice: 'Policy was successfully created.' }
        format.json { render json: @home_categories_products_indices_policy, status: :created, location: @home_categories_products_indices_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/policies/1
  # PUT /home/categories/products/indices/policies/1.json
  def update
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_policy.update_attributes(params[:home_categories_products_indices_policy])
        format.html { redirect_to @home_categories_products_indices_policy, notice: 'Policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/policies/1
  # DELETE /home/categories/products/indices/policies/1.json
  def destroy
    @home_categories_products_indices_policy = Home::Categories::Products::Indices::Policy.find(params[:id])
    @home_categories_products_indices_policy.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_policies_url }
      format.json { head :no_content }
    end
  end
end
