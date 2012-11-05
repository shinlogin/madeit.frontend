class Home::Searches::AdsController < ApplicationController
  # GET /home/searches/ads
  # GET /home/searches/ads.json
  def index
    @home_searches_ads = Home::Searches::Ad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_searches_ads }
    end
  end

  # GET /home/searches/ads/1
  # GET /home/searches/ads/1.json
  def show
    @home_searches_ad = Home::Searches::Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_searches_ad }
    end
  end

  # GET /home/searches/ads/new
  # GET /home/searches/ads/new.json
  def new
    @home_searches_ad = Home::Searches::Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_searches_ad }
    end
  end

  # GET /home/searches/ads/1/edit
  def edit
    @home_searches_ad = Home::Searches::Ad.find(params[:id])
  end

  # POST /home/searches/ads
  # POST /home/searches/ads.json
  def create
    @home_searches_ad = Home::Searches::Ad.new(params[:home_searches_ad])

    respond_to do |format|
      if @home_searches_ad.save
        format.html { redirect_to @home_searches_ad, notice: 'Ad was successfully created.' }
        format.json { render json: @home_searches_ad, status: :created, location: @home_searches_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @home_searches_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/searches/ads/1
  # PUT /home/searches/ads/1.json
  def update
    @home_searches_ad = Home::Searches::Ad.find(params[:id])

    respond_to do |format|
      if @home_searches_ad.update_attributes(params[:home_searches_ad])
        format.html { redirect_to @home_searches_ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_searches_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/searches/ads/1
  # DELETE /home/searches/ads/1.json
  def destroy
    @home_searches_ad = Home::Searches::Ad.find(params[:id])
    @home_searches_ad.destroy

    respond_to do |format|
      format.html { redirect_to home_searches_ads_url }
      format.json { head :no_content }
    end
  end
end
