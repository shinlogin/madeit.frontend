class Home::Categories::Products::Indices::LikesController < ApplicationController
  # GET /home/categories/products/indices/likes
  # GET /home/categories/products/indices/likes.json
  def index
    @home_categories_products_indices_likes = Home::Categories::Products::Indices::Like.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_likes }
    end
  end

  # GET /home/categories/products/indices/likes/1
  # GET /home/categories/products/indices/likes/1.json
  def show
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_like }
    end
  end

  # GET /home/categories/products/indices/likes/new
  # GET /home/categories/products/indices/likes/new.json
  def new
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_like }
    end
  end

  # GET /home/categories/products/indices/likes/1/edit
  def edit
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.find(params[:id])
  end

  # POST /home/categories/products/indices/likes
  # POST /home/categories/products/indices/likes.json
  def create
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.new(params[:home_categories_products_indices_like])

    respond_to do |format|
      if @home_categories_products_indices_like.save
        format.html { redirect_to @home_categories_products_indices_like, notice: 'Like was successfully created.' }
        format.json { render json: @home_categories_products_indices_like, status: :created, location: @home_categories_products_indices_like }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/likes/1
  # PUT /home/categories/products/indices/likes/1.json
  def update
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_like.update_attributes(params[:home_categories_products_indices_like])
        format.html { redirect_to @home_categories_products_indices_like, notice: 'Like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/likes/1
  # DELETE /home/categories/products/indices/likes/1.json
  def destroy
    @home_categories_products_indices_like = Home::Categories::Products::Indices::Like.find(params[:id])
    @home_categories_products_indices_like.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_likes_url }
      format.json { head :no_content }
    end
  end
end
