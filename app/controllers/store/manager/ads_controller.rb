class Store::Manager::AdsController < ApplicationController
  # GET /store/manager/ads
  # GET /store/manager/ads.json
  def index
    @store_manager_ads = Store::Manager::Ad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_ads }
    end
  end

  # GET /store/manager/ads/1
  # GET /store/manager/ads/1.json
  def show
    @store_manager_ad = Store::Manager::Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_ad }
    end
  end

  # GET /store/manager/ads/new
  # GET /store/manager/ads/new.json
  def new
    @store_manager_ad = Store::Manager::Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_ad }
    end
  end

  # GET /store/manager/ads/1/edit
  def edit
    @store_manager_ad = Store::Manager::Ad.find(params[:id])
  end

  # POST /store/manager/ads
  # POST /store/manager/ads.json
  def create
    @store_manager_ad = Store::Manager::Ad.new(params[:store_manager_ad])

    respond_to do |format|
      if @store_manager_ad.save
        format.html { redirect_to @store_manager_ad, notice: 'Ad was successfully created.' }
        format.json { render json: @store_manager_ad, status: :created, location: @store_manager_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/ads/1
  # PUT /store/manager/ads/1.json
  def update
    @store_manager_ad = Store::Manager::Ad.find(params[:id])

    respond_to do |format|
      if @store_manager_ad.update_attributes(params[:store_manager_ad])
        format.html { redirect_to @store_manager_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/ads/1
  # DELETE /store/manager/ads/1.json
  def destroy
    @store_manager_ad = Store::Manager::Ad.find(params[:id])
    @store_manager_ad.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_ads_url }
      format.json { head :no_content }
    end
  end
end
