class Home::StoresController < ApplicationController
  # GET /home/stores
  # GET /home/stores.json
  def index
    @home_stores = Home::Store.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_stores }
    end
  end

  # GET /home/stores/1
  # GET /home/stores/1.json
  def show
    @home_store = Home::Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_store }
    end
  end

  # GET /home/stores/new
  # GET /home/stores/new.json
  def new
    @home_store = Home::Store.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_store }
    end
  end

  # GET /home/stores/1/edit
  def edit
    @home_store = Home::Store.find(params[:id])
  end

  # POST /home/stores
  # POST /home/stores.json
  def create
    @home_store = Home::Store.new(params[:home_store])

    respond_to do |format|
      if @home_store.save
        format.html { redirect_to @home_store, notice: 'Store was successfully created.' }
        format.json { render json: @home_store, status: :created, location: @home_store }
      else
        format.html { render action: "new" }
        format.json { render json: @home_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/stores/1
  # PUT /home/stores/1.json
  def update
    @home_store = Home::Store.find(params[:id])

    respond_to do |format|
      if @home_store.update_attributes(params[:home_store])
        format.html { redirect_to @home_store, notice: 'Store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/stores/1
  # DELETE /home/stores/1.json
  def destroy
    @home_store = Home::Store.find(params[:id])
    @home_store.destroy

    respond_to do |format|
      format.html { redirect_to home_stores_url }
      format.json { head :no_content }
    end
  end
end
