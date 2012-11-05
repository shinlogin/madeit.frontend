class Home::Cart::SuccessesController < ApplicationController
  # GET /home/cart/successes
  # GET /home/cart/successes.json
  def index
    @home_cart_successes = Home::Cart::Success.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cart_successes }
    end
  end

  # GET /home/cart/successes/1
  # GET /home/cart/successes/1.json
  def show
    @home_cart_success = Home::Cart::Success.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cart_success }
    end
  end

  # GET /home/cart/successes/new
  # GET /home/cart/successes/new.json
  def new
    @home_cart_success = Home::Cart::Success.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cart_success }
    end
  end

  # GET /home/cart/successes/1/edit
  def edit
    @home_cart_success = Home::Cart::Success.find(params[:id])
  end

  # POST /home/cart/successes
  # POST /home/cart/successes.json
  def create
    @home_cart_success = Home::Cart::Success.new(params[:home_cart_success])

    respond_to do |format|
      if @home_cart_success.save
        format.html { redirect_to @home_cart_success, notice: 'Success was successfully created.' }
        format.json { render json: @home_cart_success, status: :created, location: @home_cart_success }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cart_success.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/cart/successes/1
  # PUT /home/cart/successes/1.json
  def update
    @home_cart_success = Home::Cart::Success.find(params[:id])

    respond_to do |format|
      if @home_cart_success.update_attributes(params[:home_cart_success])
        format.html { redirect_to @home_cart_success, notice: 'Success was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cart_success.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/cart/successes/1
  # DELETE /home/cart/successes/1.json
  def destroy
    @home_cart_success = Home::Cart::Success.find(params[:id])
    @home_cart_success.destroy

    respond_to do |format|
      format.html { redirect_to home_cart_successes_url }
      format.json { head :no_content }
    end
  end
end
