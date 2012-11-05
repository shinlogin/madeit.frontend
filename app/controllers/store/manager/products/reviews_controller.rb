class Store::Manager::Products::ReviewsController < ApplicationController
  # GET /store/manager/products/reviews
  # GET /store/manager/products/reviews.json
  def index
    @store_manager_products_reviews = Store::Manager::Products::Review.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_products_reviews }
    end
  end

  # GET /store/manager/products/reviews/1
  # GET /store/manager/products/reviews/1.json
  def show
    @store_manager_products_review = Store::Manager::Products::Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_products_review }
    end
  end

  # GET /store/manager/products/reviews/new
  # GET /store/manager/products/reviews/new.json
  def new
    @store_manager_products_review = Store::Manager::Products::Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_products_review }
    end
  end

  # GET /store/manager/products/reviews/1/edit
  def edit
    @store_manager_products_review = Store::Manager::Products::Review.find(params[:id])
  end

  # POST /store/manager/products/reviews
  # POST /store/manager/products/reviews.json
  def create
    @store_manager_products_review = Store::Manager::Products::Review.new(params[:store_manager_products_review])

    respond_to do |format|
      if @store_manager_products_review.save
        format.html { redirect_to @store_manager_products_review, notice: 'Review was successfully created.' }
        format.json { render json: @store_manager_products_review, status: :created, location: @store_manager_products_review }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_products_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/products/reviews/1
  # PUT /store/manager/products/reviews/1.json
  def update
    @store_manager_products_review = Store::Manager::Products::Review.find(params[:id])

    respond_to do |format|
      if @store_manager_products_review.update_attributes(params[:store_manager_products_review])
        format.html { redirect_to @store_manager_products_review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_products_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/products/reviews/1
  # DELETE /store/manager/products/reviews/1.json
  def destroy
    @store_manager_products_review = Store::Manager::Products::Review.find(params[:id])
    @store_manager_products_review.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_products_reviews_url }
      format.json { head :no_content }
    end
  end
end
