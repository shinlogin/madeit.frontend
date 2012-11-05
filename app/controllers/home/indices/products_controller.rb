class Home::Indices::ProductsController < ApplicationController
  # GET /home/indices/products
  # GET /home/indices/products.json
  def index
    @home_indices_products = Home::Indices::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices_products }
    end
  end

  # GET /home/indices/products/1
  # GET /home/indices/products/1.json
  def show
    @home_indices_product = Home::Indices::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_indices_product }
    end
  end

  # GET /home/indices/products/new
  # GET /home/indices/products/new.json
  def new
    @home_indices_product = Home::Indices::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_indices_product }
    end
  end

  # GET /home/indices/products/1/edit
  def edit
    @home_indices_product = Home::Indices::Product.find(params[:id])
  end

  # POST /home/indices/products
  # POST /home/indices/products.json
  def create
    @home_indices_product = Home::Indices::Product.new(params[:home_indices_product])

    respond_to do |format|
      if @home_indices_product.save
        format.html { redirect_to @home_indices_product, notice: 'Product was successfully created.' }
        format.json { render json: @home_indices_product, status: :created, location: @home_indices_product }
      else
        format.html { render action: "new" }
        format.json { render json: @home_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/products/1
  # PUT /home/indices/products/1.json
  def update
    @home_indices_product = Home::Indices::Product.find(params[:id])

    respond_to do |format|
      if @home_indices_product.update_attributes(params[:home_indices_product])
        format.html { redirect_to @home_indices_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_indices_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/products/1
  # DELETE /home/indices/products/1.json
  def destroy
    @home_indices_product = Home::Indices::Product.find(params[:id])
    @home_indices_product.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_products_url }
      format.json { head :no_content }
    end
  end
end
