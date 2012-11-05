class Home::Categories::Products::Indices::PhotosController < ApplicationController
  # GET /home/categories/products/indices/photos
  # GET /home/categories/products/indices/photos.json
  def index
    @home_categories_products_indices_photos = Home::Categories::Products::Indices::Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_photos }
    end
  end

  # GET /home/categories/products/indices/photos/1
  # GET /home/categories/products/indices/photos/1.json
  def show
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_photo }
    end
  end

  # GET /home/categories/products/indices/photos/new
  # GET /home/categories/products/indices/photos/new.json
  def new
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_photo }
    end
  end

  # GET /home/categories/products/indices/photos/1/edit
  def edit
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.find(params[:id])
  end

  # POST /home/categories/products/indices/photos
  # POST /home/categories/products/indices/photos.json
  def create
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.new(params[:home_categories_products_indices_photo])

    respond_to do |format|
      if @home_categories_products_indices_photo.save
        format.html { redirect_to @home_categories_products_indices_photo, notice: 'Photo was successfully created.' }
        format.json { render json: @home_categories_products_indices_photo, status: :created, location: @home_categories_products_indices_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/photos/1
  # PUT /home/categories/products/indices/photos/1.json
  def update
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_photo.update_attributes(params[:home_categories_products_indices_photo])
        format.html { redirect_to @home_categories_products_indices_photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/photos/1
  # DELETE /home/categories/products/indices/photos/1.json
  def destroy
    @home_categories_products_indices_photo = Home::Categories::Products::Indices::Photo.find(params[:id])
    @home_categories_products_indices_photo.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_photos_url }
      format.json { head :no_content }
    end
  end
end
