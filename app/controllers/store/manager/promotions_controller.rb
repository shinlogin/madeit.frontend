class Store::Manager::PromotionsController < ApplicationController
  # GET /store/manager/promotions
  # GET /store/manager/promotions.json
  def index
    @store_manager_promotions = Store::Manager::Promotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_promotions }
    end
  end

  # GET /store/manager/promotions/1
  # GET /store/manager/promotions/1.json
  def show
    @store_manager_promotion = Store::Manager::Promotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_promotion }
    end
  end

  # GET /store/manager/promotions/new
  # GET /store/manager/promotions/new.json
  def new
    @store_manager_promotion = Store::Manager::Promotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_promotion }
    end
  end

  # GET /store/manager/promotions/1/edit
  def edit
    @store_manager_promotion = Store::Manager::Promotion.find(params[:id])
  end

  # POST /store/manager/promotions
  # POST /store/manager/promotions.json
  def create
    @store_manager_promotion = Store::Manager::Promotion.new(params[:store_manager_promotion])

    respond_to do |format|
      if @store_manager_promotion.save
        format.html { redirect_to @store_manager_promotion, notice: 'Promotion was successfully created.' }
        format.json { render json: @store_manager_promotion, status: :created, location: @store_manager_promotion }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/promotions/1
  # PUT /store/manager/promotions/1.json
  def update
    @store_manager_promotion = Store::Manager::Promotion.find(params[:id])

    respond_to do |format|
      if @store_manager_promotion.update_attributes(params[:store_manager_promotion])
        format.html { redirect_to @store_manager_promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/promotions/1
  # DELETE /store/manager/promotions/1.json
  def destroy
    @store_manager_promotion = Store::Manager::Promotion.find(params[:id])
    @store_manager_promotion.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_promotions_url }
      format.json { head :no_content }
    end
  end
end
