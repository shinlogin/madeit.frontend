class Home::CategoriesController < ApplicationController
  # GET /home/categories
  # GET /home/categories.json
  def index
    @home_categories = Home::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories }
    end
  end

  # GET /home/categories/1
  # GET /home/categories/1.json
  def show
    @home_category = Home::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_category }
    end
  end

  # GET /home/categories/new
  # GET /home/categories/new.json
  def new
    @home_category = Home::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_category }
    end
  end

  # GET /home/categories/1/edit
  def edit
    @home_category = Home::Category.find(params[:id])
  end

  # POST /home/categories
  # POST /home/categories.json
  def create
    @home_category = Home::Category.new(params[:home_category])

    respond_to do |format|
      if @home_category.save
        format.html { redirect_to @home_category, notice: 'Category was successfully created.' }
        format.json { render json: @home_category, status: :created, location: @home_category }
      else
        format.html { render action: "new" }
        format.json { render json: @home_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/1
  # PUT /home/categories/1.json
  def update
    @home_category = Home::Category.find(params[:id])

    respond_to do |format|
      if @home_category.update_attributes(params[:home_category])
        format.html { redirect_to @home_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/1
  # DELETE /home/categories/1.json
  def destroy
    @home_category = Home::Category.find(params[:id])
    @home_category.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_url }
      format.json { head :no_content }
    end
  end
end
