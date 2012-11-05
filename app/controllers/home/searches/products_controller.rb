class Home::Searches::ProductsController < ApplicationController
  # GET /home/searches/products
  # GET /home/searches/products.json
  def index
    @home_searches_products = Home::Searches::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_searches_products }
    end
  end

  # GET /home/searches/products/1
  # GET /home/searches/products/1.json
  def show
    @home_searches_product = Home::Searches::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_searches_product }
    end
  end

  # GET /home/searches/products/new
  # GET /home/searches/products/new.json
  def new
    @home_searches_product = Home::Searches::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_searches_product }
    end
  end

  # GET /home/searches/products/1/edit
  def edit
    @home_searches_product = Home::Searches::Product.find(params[:id])
  end

  # POST /home/searches/products
  # POST /home/searches/products.json
  def create
    @home_searches_product = Home::Searches::Product.new(params[:home_searches_product])

    respond_to do |format|
      if @home_searches_product.save
        format.html { redirect_to @home_searches_product, notice: 'Product was successfully created.' }
        format.json { render json: @home_searches_product, status: :created, location: @home_searches_product }
      else
        format.html { render action: "new" }
        format.json { render json: @home_searches_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/searches/products/1
  # PUT /home/searches/products/1.json
  def update
    @home_searches_product = Home::Searches::Product.find(params[:id])

    respond_to do |format|
      if @home_searches_product.update_attributes(params[:home_searches_product])
        format.html { redirect_to @home_searches_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_searches_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/searches/products/1
  # DELETE /home/searches/products/1.json
  def destroy
    @home_searches_product = Home::Searches::Product.find(params[:id])
    @home_searches_product.destroy

    respond_to do |format|
      format.html { redirect_to home_searches_products_url }
      format.json { head :no_content }
    end
  end
end
