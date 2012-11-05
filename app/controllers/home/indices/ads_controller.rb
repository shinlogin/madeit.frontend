class Home::Indices::AdsController < ApplicationController
  # GET /home/indices/ads
  # GET /home/indices/ads.json
  def index
    @home_indices_ads = Home::Indices::Ad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices_ads }
    end
  end

  # GET /home/indices/ads/1
  # GET /home/indices/ads/1.json
  def show
    @home_indices_ad = Home::Indices::Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_indices_ad }
    end
  end

  # GET /home/indices/ads/new
  # GET /home/indices/ads/new.json
  def new
    @home_indices_ad = Home::Indices::Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_indices_ad }
    end
  end

  # GET /home/indices/ads/1/edit
  def edit
    @home_indices_ad = Home::Indices::Ad.find(params[:id])
  end

  # POST /home/indices/ads
  # POST /home/indices/ads.json
  def create
    @home_indices_ad = Home::Indices::Ad.new(params[:home_indices_ad])

    respond_to do |format|
      if @home_indices_ad.save
        format.html { redirect_to @home_indices_ad, notice: 'Ad was successfully created.' }
        format.json { render json: @home_indices_ad, status: :created, location: @home_indices_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @home_indices_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/ads/1
  # PUT /home/indices/ads/1.json
  def update
    @home_indices_ad = Home::Indices::Ad.find(params[:id])

    respond_to do |format|
      if @home_indices_ad.update_attributes(params[:home_indices_ad])
        format.html { redirect_to @home_indices_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_indices_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/ads/1
  # DELETE /home/indices/ads/1.json
  def destroy
    @home_indices_ad = Home::Indices::Ad.find(params[:id])
    @home_indices_ad.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_ads_url }
      format.json { head :no_content }
    end
  end
end
