class Store::Manager::Indices::UsersController < ApplicationController
  # GET /store/manager/indices/users
  # GET /store/manager/indices/users.json
  def index
    @store_manager_indices_users = Store::Manager::Indices::User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_indices_users }
    end
  end

  # GET /store/manager/indices/users/1
  # GET /store/manager/indices/users/1.json
  def show
    @store_manager_indices_user = Store::Manager::Indices::User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_indices_user }
    end
  end

  # GET /store/manager/indices/users/new
  # GET /store/manager/indices/users/new.json
  def new
    @store_manager_indices_user = Store::Manager::Indices::User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_indices_user }
    end
  end

  # GET /store/manager/indices/users/1/edit
  def edit
    @store_manager_indices_user = Store::Manager::Indices::User.find(params[:id])
  end

  # POST /store/manager/indices/users
  # POST /store/manager/indices/users.json
  def create
    @store_manager_indices_user = Store::Manager::Indices::User.new(params[:store_manager_indices_user])

    respond_to do |format|
      if @store_manager_indices_user.save
        format.html { redirect_to @store_manager_indices_user, notice: 'User was successfully created.' }
        format.json { render json: @store_manager_indices_user, status: :created, location: @store_manager_indices_user }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_indices_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/indices/users/1
  # PUT /store/manager/indices/users/1.json
  def update
    @store_manager_indices_user = Store::Manager::Indices::User.find(params[:id])

    respond_to do |format|
      if @store_manager_indices_user.update_attributes(params[:store_manager_indices_user])
        format.html { redirect_to @store_manager_indices_user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_indices_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/indices/users/1
  # DELETE /store/manager/indices/users/1.json
  def destroy
    @store_manager_indices_user = Store::Manager::Indices::User.find(params[:id])
    @store_manager_indices_user.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_indices_users_url }
      format.json { head :no_content }
    end
  end
end
