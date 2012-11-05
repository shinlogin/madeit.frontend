class Home::Indices::ShopsController < ApplicationController
  # GET /home/indices/shops
  # GET /home/indices/shops.json
  def index
    @home_indices_shops = Home::Indices::Shop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices_shops }
    end
  end

  # GET /home/indices/shops/1
  # GET /home/indices/shops/1.json
  def show
    @home_indices_shop = Home::Indices::Shop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_indices_shop }
    end
  end

  # GET /home/indices/shops/new
  # GET /home/indices/shops/new.json
  def new
    @home_indices_shop = Home::Indices::Shop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_indices_shop }
    end
  end

  # GET /home/indices/shops/1/edit
  def edit
    @home_indices_shop = Home::Indices::Shop.find(params[:id])
  end

  # POST /home/indices/shops
  # POST /home/indices/shops.json
  def create
    @home_indices_shop = Home::Indices::Shop.new(params[:home_indices_shop])

    respond_to do |format|
      if @home_indices_shop.save
        format.html { redirect_to @home_indices_shop, notice: 'Shop was successfully created.' }
        format.json { render json: @home_indices_shop, status: :created, location: @home_indices_shop }
      else
        format.html { render action: "new" }
        format.json { render json: @home_indices_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/shops/1
  # PUT /home/indices/shops/1.json
  def update
    @home_indices_shop = Home::Indices::Shop.find(params[:id])

    respond_to do |format|
      if @home_indices_shop.update_attributes(params[:home_indices_shop])
        format.html { redirect_to @home_indices_shop, notice: 'Shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_indices_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/shops/1
  # DELETE /home/indices/shops/1.json
  def destroy
    @home_indices_shop = Home::Indices::Shop.find(params[:id])
    @home_indices_shop.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_shops_url }
      format.json { head :no_content }
    end
  end
end
