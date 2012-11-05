class Store::Manager::Messages::ReadsController < ApplicationController
  # GET /store/manager/messages/reads
  # GET /store/manager/messages/reads.json
  def index
    @store_manager_messages_reads = Store::Manager::Messages::Read.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_messages_reads }
    end
  end

  # GET /store/manager/messages/reads/1
  # GET /store/manager/messages/reads/1.json
  def show
    @store_manager_messages_read = Store::Manager::Messages::Read.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_messages_read }
    end
  end

  # GET /store/manager/messages/reads/new
  # GET /store/manager/messages/reads/new.json
  def new
    @store_manager_messages_read = Store::Manager::Messages::Read.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_messages_read }
    end
  end

  # GET /store/manager/messages/reads/1/edit
  def edit
    @store_manager_messages_read = Store::Manager::Messages::Read.find(params[:id])
  end

  # POST /store/manager/messages/reads
  # POST /store/manager/messages/reads.json
  def create
    @store_manager_messages_read = Store::Manager::Messages::Read.new(params[:store_manager_messages_read])

    respond_to do |format|
      if @store_manager_messages_read.save
        format.html { redirect_to @store_manager_messages_read, notice: 'Read was successfully created.' }
        format.json { render json: @store_manager_messages_read, status: :created, location: @store_manager_messages_read }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_messages_read.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/messages/reads/1
  # PUT /store/manager/messages/reads/1.json
  def update
    @store_manager_messages_read = Store::Manager::Messages::Read.find(params[:id])

    respond_to do |format|
      if @store_manager_messages_read.update_attributes(params[:store_manager_messages_read])
        format.html { redirect_to @store_manager_messages_read, notice: 'Read was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_messages_read.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/messages/reads/1
  # DELETE /store/manager/messages/reads/1.json
  def destroy
    @store_manager_messages_read = Store::Manager::Messages::Read.find(params[:id])
    @store_manager_messages_read.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_messages_reads_url }
      format.json { head :no_content }
    end
  end
end
