class Home::Categories::Products::Indices::UsersController < ApplicationController
  # GET /home/categories/products/indices/users
  # GET /home/categories/products/indices/users.json
  def index
    @home_categories_products_indices_users = Home::Categories::Products::Indices::User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_indices_users }
    end
  end

  # GET /home/categories/products/indices/users/1
  # GET /home/categories/products/indices/users/1.json
  def show
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_indices_user }
    end
  end

  # GET /home/categories/products/indices/users/new
  # GET /home/categories/products/indices/users/new.json
  def new
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_indices_user }
    end
  end

  # GET /home/categories/products/indices/users/1/edit
  def edit
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.find(params[:id])
  end

  # POST /home/categories/products/indices/users
  # POST /home/categories/products/indices/users.json
  def create
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.new(params[:home_categories_products_indices_user])

    respond_to do |format|
      if @home_categories_products_indices_user.save
        format.html { redirect_to @home_categories_products_indices_user, notice: 'User was successfully created.' }
        format.json { render json: @home_categories_products_indices_user, status: :created, location: @home_categories_products_indices_user }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_indices_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/indices/users/1
  # PUT /home/categories/products/indices/users/1.json
  def update
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.find(params[:id])

    respond_to do |format|
      if @home_categories_products_indices_user.update_attributes(params[:home_categories_products_indices_user])
        format.html { redirect_to @home_categories_products_indices_user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_indices_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/indices/users/1
  # DELETE /home/categories/products/indices/users/1.json
  def destroy
    @home_categories_products_indices_user = Home::Categories::Products::Indices::User.find(params[:id])
    @home_categories_products_indices_user.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_indices_users_url }
      format.json { head :no_content }
    end
  end
end
