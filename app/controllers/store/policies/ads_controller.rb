class Store::Policies::AdsController < ApplicationController
  # GET /store/policies/ads
  # GET /store/policies/ads.json
  def index
    @store_policies_ads = Store::Policies::Ad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_policies_ads }
    end
  end

  # GET /store/policies/ads/1
  # GET /store/policies/ads/1.json
  def show
    @store_policies_ad = Store::Policies::Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_policies_ad }
    end
  end

  # GET /store/policies/ads/new
  # GET /store/policies/ads/new.json
  def new
    @store_policies_ad = Store::Policies::Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_policies_ad }
    end
  end

  # GET /store/policies/ads/1/edit
  def edit
    @store_policies_ad = Store::Policies::Ad.find(params[:id])
  end

  # POST /store/policies/ads
  # POST /store/policies/ads.json
  def create
    @store_policies_ad = Store::Policies::Ad.new(params[:store_policies_ad])

    respond_to do |format|
      if @store_policies_ad.save
        format.html { redirect_to @store_policies_ad, notice: 'Ad was successfully created.' }
        format.json { render json: @store_policies_ad, status: :created, location: @store_policies_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @store_policies_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/policies/ads/1
  # PUT /store/policies/ads/1.json
  def update
    @store_policies_ad = Store::Policies::Ad.find(params[:id])

    respond_to do |format|
      if @store_policies_ad.update_attributes(params[:store_policies_ad])
        format.html { redirect_to @store_policies_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_policies_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/policies/ads/1
  # DELETE /store/policies/ads/1.json
  def destroy
    @store_policies_ad = Store::Policies::Ad.find(params[:id])
    @store_policies_ad.destroy

    respond_to do |format|
      format.html { redirect_to store_policies_ads_url }
      format.json { head :no_content }
    end
  end
end
