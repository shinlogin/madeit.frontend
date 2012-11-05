class Home::Categories::Products::Indices::DescriptionsController < ApplicationController
  # GET /home/categories/products/indices/descriptions
  # GET /home/categories/products/indices/descriptions.json
  def index
    @home_categories_products_indices_descriptions = Home::Categories::Products::Indices::Description.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_descriptions }
    end
  end

  # GET /home/categories/products/indices/descriptions/1
  # GET /home/categories/products/indices/descriptions/1.json
  def show
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_description }
    end
  end

  # GET /home/categories/products/indices/descriptions/new
  # GET /home/categories/products/indices/descriptions/new.json
  def new
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_description }
    end
  end

  # GET /home/categories/products/indices/descriptions/1/edit
  def edit
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.find(params[:id])
  end

  # POST /home/categories/products/indices/descriptions
  # POST /home/categories/products/indices/descriptions.json
  def create
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.new(params[:home_categories_products_indices_description])

    respond_to do |format|
      if @home_categories_products_indices_description.save
        format.html { redirect_to @home_categories_products_indices_description, notice: 'Description was successfully created.' }
        format.json { render json: @home_categories_products_indices_description, status: :created, location: @home_categories_products_indices_description }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/descriptions/1
  # PUT /home/categories/products/indices/descriptions/1.json
  def update
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_description.update_attributes(params[:home_categories_products_indices_description])
        format.html { redirect_to @home_categories_products_indices_description, notice: 'Description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/descriptions/1
  # DELETE /home/categories/products/indices/descriptions/1.json
  def destroy
    @home_categories_products_indices_description = Home::Categories::Products::Indices::Description.find(params[:id])
    @home_categories_products_indices_description.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_descriptions_url }
      format.json { head :no_content }
    end
  end
end
