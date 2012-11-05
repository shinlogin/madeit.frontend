class Store::Indices::AdsController < ApplicationController
  # GET /store/indices/ads
  # GET /store/indices/ads.json
  def index
    @store_indices_ads = Store::Indices::Ad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_indices_ads }
    end
  end

  # GET /store/indices/ads/1
  # GET /store/indices/ads/1.json
  def show
    @store_indices_ad = Store::Indices::Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_indices_ad }
    end
  end

  # GET /store/indices/ads/new
  # GET /store/indices/ads/new.json
  def new
    @store_indices_ad = Store::Indices::Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_indices_ad }
    end
  end

  # GET /store/indices/ads/1/edit
  def edit
    @store_indices_ad = Store::Indices::Ad.find(params[:id])
  end

  # POST /store/indices/ads
  # POST /store/indices/ads.json
  def create
    @store_indices_ad = Store::Indices::Ad.new(params[:store_indices_ad])

    respond_to do |format|
      if @store_indices_ad.save
        format.html { redirect_to @store_indices_ad, notice: 'Ad was successfully created.' }
        format.json { render json: @store_indices_ad, status: :created, location: @store_indices_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @store_indices_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/indices/ads/1
  # PUT /store/indices/ads/1.json
  def update
    @store_indices_ad = Store::Indices::Ad.find(params[:id])

    respond_to do |format|
      if @store_indices_ad.update_attributes(params[:store_indices_ad])
        format.html { redirect_to @store_indices_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_indices_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/indices/ads/1
  # DELETE /store/indices/ads/1.json
  def destroy
    @store_indices_ad = Store::Indices::Ad.find(params[:id])
    @store_indices_ad.destroy

    respond_to do |format|
      format.html { redirect_to store_indices_ads_url }
      format.json { head :no_content }
    end
  end
end
