class Store::Manager::ReviewsController < ApplicationController
  # GET /store/manager/reviews
  # GET /store/manager/reviews.json
  def index
    @store_manager_reviews = Store::Manager::Review.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_reviews }
    end
  end

  # GET /store/manager/reviews/1
  # GET /store/manager/reviews/1.json
  def show
    @store_manager_review = Store::Manager::Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_review }
    end
  end

  # GET /store/manager/reviews/new
  # GET /store/manager/reviews/new.json
  def new
    @store_manager_review = Store::Manager::Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_review }
    end
  end

  # GET /store/manager/reviews/1/edit
  def edit
    @store_manager_review = Store::Manager::Review.find(params[:id])
  end

  # POST /store/manager/reviews
  # POST /store/manager/reviews.json
  def create
    @store_manager_review = Store::Manager::Review.new(params[:store_manager_review])

    respond_to do |format|
      if @store_manager_review.save
        format.html { redirect_to @store_manager_review, notice: 'Review was successfully created.' }
        format.json { render json: @store_manager_review, status: :created, location: @store_manager_review }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/reviews/1
  # PUT /store/manager/reviews/1.json
  def update
    @store_manager_review = Store::Manager::Review.find(params[:id])

    respond_to do |format|
      if @store_manager_review.update_attributes(params[:store_manager_review])
        format.html { redirect_to @store_manager_review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/reviews/1
  # DELETE /store/manager/reviews/1.json
  def destroy
    @store_manager_review = Store::Manager::Review.find(params[:id])
    @store_manager_review.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_reviews_url }
      format.json { head :no_content }
    end
  end
end
