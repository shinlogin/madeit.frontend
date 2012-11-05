class Home::Categories::CategoriesController < ApplicationController
  # GET /home/categories/categories
  # GET /home/categories/categories.json
  def index
    @home_categories_categories = Home::Categories::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_categories }
    end
  end

  # GET /home/categories/categories/1
  # GET /home/categories/categories/1.json
  def show
    @home_categories_category = Home::Categories::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_category }
    end
  end

  # GET /home/categories/categories/new
  # GET /home/categories/categories/new.json
  def new
    @home_categories_category = Home::Categories::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_category }
    end
  end

  # GET /home/categories/categories/1/edit
  def edit
    @home_categories_category = Home::Categories::Category.find(params[:id])
  end

  # POST /home/categories/categories
  # POST /home/categories/categories.json
  def create
    @home_categories_category = Home::Categories::Category.new(params[:home_categories_category])

    respond_to do |format|
      if @home_categories_category.save
        format.html { redirect_to @home_categories_category, notice: 'Category was successfully created.' }
        format.json { render json: @home_categories_category, status: :created, location: @home_categories_category }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/categories/1
  # PUT /home/categories/categories/1.json
  def update
    @home_categories_category = Home::Categories::Category.find(params[:id])

    respond_to do |format|
      if @home_categories_category.update_attributes(params[:home_categories_category])
        format.html { redirect_to @home_categories_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/categories/1
  # DELETE /home/categories/categories/1.json
  def destroy
    @home_categories_category = Home::Categories::Category.find(params[:id])
    @home_categories_category.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_categories_url }
      format.json { head :no_content }
    end
  end
end
