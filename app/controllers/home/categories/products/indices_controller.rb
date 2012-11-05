class Home::Categories::Products::IndicesController < ApplicationController
  # GET /home/categories/products/indices
  # GET /home/categories/products/indices.json
  def index
    @home_categories_products_indices = Home::Categories::Products::Index.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices }
    end
  end

  # GET /home/categories/products/indices/1
  # GET /home/categories/products/indices/1.json
  def show
    @home_categories_products_index = Home::Categories::Products::Index.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_index }
    end
  end

  # GET /home/categories/products/indices/new
  # GET /home/categories/products/indices/new.json
  def new
    @home_categories_products_index = Home::Categories::Products::Index.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_index }
    end
  end

  # GET /home/categories/products/indices/1/edit
  def edit
    @home_categories_products_index = Home::Categories::Products::Index.find(params[:id])
  end

  # POST /home/categories/products/indices
  # POST /home/categories/products/indices.json
  def create
    @home_categories_products_index = Home::Categories::Products::Index.new(params[:home_categories_products_index])

    respond_to do |format|
      if @home_categories_products_index.save
        format.html { redirect_to @home_categories_products_index, notice: 'Index was successfully created.' }
        format.json { render json: @home_categories_products_index, status: :created, location: @home_categories_products_index }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/1
  # PUT /home/categories/products/indices/1.json
  def update
    @home_categories_products_index = Home::Categories::Products::Index.find(params[:id])

    respond_to do |format|
      if @home_categories_products_index.update_attributes(params[:home_categories_products_index])
        format.html { redirect_to @home_categories_products_index, notice: 'Index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/1
  # DELETE /home/categories/products/indices/1.json
  def destroy
    @home_categories_products_index = Home::Categories::Products::Index.find(params[:id])
    @home_categories_products_index.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_url }
      format.json { head :no_content }
    end
  end
end
