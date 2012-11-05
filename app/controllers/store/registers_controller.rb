class Store::RegistersController < ApplicationController
  # GET /store/registers
  # GET /store/registers.json
  def index
    @store_registers = Store::Register.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_registers }
    end
  end

  # GET /store/registers/1
  # GET /store/registers/1.json
  def show
    @store_register = Store::Register.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_register }
    end
  end

  # GET /store/registers/new
  # GET /store/registers/new.json
  def new
    @store_register = Store::Register.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_register }
    end
  end

  # GET /store/registers/1/edit
  def edit
    @store_register = Store::Register.find(params[:id])
  end

  # POST /store/registers
  # POST /store/registers.json
  def create
    @store_register = Store::Register.new(params[:store_register])

    respond_to do |format|
      if @store_register.save
        format.html { redirect_to @store_register, notice: 'Register was successfully created.' }
        format.json { render json: @store_register, status: :created, location: @store_register }
      else
        format.html { render action: "new" }
        format.json { render json: @store_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/registers/1
  # PUT /store/registers/1.json
  def update
    @store_register = Store::Register.find(params[:id])

    respond_to do |format|
      if @store_register.update_attributes(params[:store_register])
        format.html { redirect_to @store_register, notice: 'Register was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/registers/1
  # DELETE /store/registers/1.json
  def destroy
    @store_register = Store::Register.find(params[:id])
    @store_register.destroy

    respond_to do |format|
      format.html { redirect_to store_registers_url }
      format.json { head :no_content }
    end
  end
end
