class Home::Cart::IndicesController < ApplicationController
  # GET /home/cart/indices
  # GET /home/cart/indices.json
  def index
    @home_cart_indices = Home::Cart::Index.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cart_indices }
    end
  end

  # GET /home/cart/indices/1
  # GET /home/cart/indices/1.json
  def show
    @home_cart_index = Home::Cart::Index.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cart_index }
    end
  end

  # GET /home/cart/indices/new
  # GET /home/cart/indices/new.json
  def new
    @home_cart_index = Home::Cart::Index.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cart_index }
    end
  end

  # GET /home/cart/indices/1/edit
  def edit
    @home_cart_index = Home::Cart::Index.find(params[:id])
  end

  # POST /home/cart/indices
  # POST /home/cart/indices.json
  def create
    @home_cart_index = Home::Cart::Index.new(params[:home_cart_index])

    respond_to do |format|
      if @home_cart_index.save
        format.html { redirect_to @home_cart_index, notice: 'Index was successfully created.' }
        format.json { render json: @home_cart_index, status: :created, location: @home_cart_index }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cart_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/cart/indices/1
  # PUT /home/cart/indices/1.json
  def update
    @home_cart_index = Home::Cart::Index.find(params[:id])

    respond_to do |format|
      if @home_cart_index.update_attributes(params[:home_cart_index])
        format.html { redirect_to @home_cart_index, notice: 'Index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cart_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/cart/indices/1
  # DELETE /home/cart/indices/1.json
  def destroy
    @home_cart_index = Home::Cart::Index.find(params[:id])
    @home_cart_index.destroy

    respond_to do |format|
      format.html { redirect_to home_cart_indices_url }
      format.json { head :no_content }
    end
  end
end
