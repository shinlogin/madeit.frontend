class Home::Cart::FailsController < ApplicationController
  # GET /home/cart/fails
  # GET /home/cart/fails.json
  def index
    @home_cart_fails = Home::Cart::Fail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cart_fails }
    end
  end

  # GET /home/cart/fails/1
  # GET /home/cart/fails/1.json
  def show
    @home_cart_fail = Home::Cart::Fail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cart_fail }
    end
  end

  # GET /home/cart/fails/new
  # GET /home/cart/fails/new.json
  def new
    @home_cart_fail = Home::Cart::Fail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cart_fail }
    end
  end

  # GET /home/cart/fails/1/edit
  def edit
    @home_cart_fail = Home::Cart::Fail.find(params[:id])
  end

  # POST /home/cart/fails
  # POST /home/cart/fails.json
  def create
    @home_cart_fail = Home::Cart::Fail.new(params[:home_cart_fail])

    respond_to do |format|
      if @home_cart_fail.save
        format.html { redirect_to @home_cart_fail, notice: 'Fail was successfully created.' }
        format.json { render json: @home_cart_fail, status: :created, location: @home_cart_fail }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cart_fail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/cart/fails/1
  # PUT /home/cart/fails/1.json
  def update
    @home_cart_fail = Home::Cart::Fail.find(params[:id])

    respond_to do |format|
      if @home_cart_fail.update_attributes(params[:home_cart_fail])
        format.html { redirect_to @home_cart_fail, notice: 'Fail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cart_fail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/cart/fails/1
  # DELETE /home/cart/fails/1.json
  def destroy
    @home_cart_fail = Home::Cart::Fail.find(params[:id])
    @home_cart_fail.destroy

    respond_to do |format|
      format.html { redirect_to home_cart_fails_url }
      format.json { head :no_content }
    end
  end
end
