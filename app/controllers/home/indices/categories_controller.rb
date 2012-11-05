class Home::Indices::CategoriesController < ApplicationController
  # GET /home/indices/categories
  # GET /home/indices/categories.json
  def index
    @home_indices_categories = Home::Indices::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices_categories }
    end
  end

  # GET /home/indices/categories/1
  # GET /home/indices/categories/1.json
  def show
    @home_indices_category = Home::Indices::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_indices_category }
    end
  end

  # GET /home/indices/categories/new
  # GET /home/indices/categories/new.json
  def new
    @home_indices_category = Home::Indices::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_indices_category }
    end
  end

  # GET /home/indices/categories/1/edit
  def edit
    @home_indices_category = Home::Indices::Category.find(params[:id])
  end

  # POST /home/indices/categories
  # POST /home/indices/categories.json
  def create
    @home_indices_category = Home::Indices::Category.new(params[:home_indices_category])

    respond_to do |format|
      if @home_indices_category.save
        format.html { redirect_to @home_indices_category, notice: 'Category was successfully created.' }
        format.json { render json: @home_indices_category, status: :created, location: @home_indices_category }
      else
        format.html { render action: "new" }
        format.json { render json: @home_indices_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/categories/1
  # PUT /home/indices/categories/1.json
  def update
    @home_indices_category = Home::Indices::Category.find(params[:id])

    respond_to do |format|
      if @home_indices_category.update_attributes(params[:home_indices_category])
        format.html { redirect_to @home_indices_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_indices_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/categories/1
  # DELETE /home/indices/categories/1.json
  def destroy
    @home_indices_category = Home::Indices::Category.find(params[:id])
    @home_indices_category.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_categories_url }
      format.json { head :no_content }
    end
  end
end
