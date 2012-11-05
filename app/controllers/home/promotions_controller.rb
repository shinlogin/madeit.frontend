class Home::PromotionsController < ApplicationController
  # GET /home/promotions
  # GET /home/promotions.json
  def index
    @home_promotions = Home::Promotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_promotions }
    end
  end

  # GET /home/promotions/1
  # GET /home/promotions/1.json
  def show
    @home_promotion = Home::Promotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_promotion }
    end
  end

  # GET /home/promotions/new
  # GET /home/promotions/new.json
  def new
    @home_promotion = Home::Promotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_promotion }
    end
  end

  # GET /home/promotions/1/edit
  def edit
    @home_promotion = Home::Promotion.find(params[:id])
  end

  # POST /home/promotions
  # POST /home/promotions.json
  def create
    @home_promotion = Home::Promotion.new(params[:home_promotion])

    respond_to do |format|
      if @home_promotion.save
        format.html { redirect_to @home_promotion, notice: 'Promotion was successfully created.' }
        format.json { render json: @home_promotion, status: :created, location: @home_promotion }
      else
        format.html { render action: "new" }
        format.json { render json: @home_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/promotions/1
  # PUT /home/promotions/1.json
  def update
    @home_promotion = Home::Promotion.find(params[:id])

    respond_to do |format|
      if @home_promotion.update_attributes(params[:home_promotion])
        format.html { redirect_to @home_promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/promotions/1
  # DELETE /home/promotions/1.json
  def destroy
    @home_promotion = Home::Promotion.find(params[:id])
    @home_promotion.destroy

    respond_to do |format|
      format.html { redirect_to home_promotions_url }
      format.json { head :no_content }
    end
  end
end
