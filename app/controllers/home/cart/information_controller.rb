class Home::Cart::InformationController < ApplicationController
  # GET /home/cart/information
  # GET /home/cart/information.json
  def index
    @home_cart_information = Home::Cart::Information.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cart_information }
    end
  end

  # GET /home/cart/information/1
  # GET /home/cart/information/1.json
  def show
    @home_cart_information = Home::Cart::Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cart_information }
    end
  end

  # GET /home/cart/information/new
  # GET /home/cart/information/new.json
  def new
    @home_cart_information = Home::Cart::Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cart_information }
    end
  end

  # GET /home/cart/information/1/edit
  def edit
    @home_cart_information = Home::Cart::Information.find(params[:id])
  end

  # POST /home/cart/information
  # POST /home/cart/information.json
  def create
    @home_cart_information = Home::Cart::Information.new(params[:home_cart_information])

    respond_to do |format|
      if @home_cart_information.save
        format.html { redirect_to @home_cart_information, notice: 'Information was successfully created.' }
        format.json { render json: @home_cart_information, status: :created, location: @home_cart_information }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cart_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/cart/information/1
  # PUT /home/cart/information/1.json
  def update
    @home_cart_information = Home::Cart::Information.find(params[:id])

    respond_to do |format|
      if @home_cart_information.update_attributes(params[:home_cart_information])
        format.html { redirect_to @home_cart_information, notice: 'Information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cart_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/cart/information/1
  # DELETE /home/cart/information/1.json
  def destroy
    @home_cart_information = Home::Cart::Information.find(params[:id])
    @home_cart_information.destroy

    respond_to do |format|
      format.html { redirect_to home_cart_information_index_url }
      format.json { head :no_content }
    end
  end
end
