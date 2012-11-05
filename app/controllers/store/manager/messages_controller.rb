class Store::Manager::MessagesController < ApplicationController
  # GET /store/manager/messages
  # GET /store/manager/messages.json
  def index
    @store_manager_messages = Store::Manager::Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_messages }
    end
  end

  # GET /store/manager/messages/1
  # GET /store/manager/messages/1.json
  def show
    @store_manager_message = Store::Manager::Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_message }
    end
  end

  # GET /store/manager/messages/new
  # GET /store/manager/messages/new.json
  def new
    @store_manager_message = Store::Manager::Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_message }
    end
  end

  # GET /store/manager/messages/1/edit
  def edit
    @store_manager_message = Store::Manager::Message.find(params[:id])
  end

  # POST /store/manager/messages
  # POST /store/manager/messages.json
  def create
    @store_manager_message = Store::Manager::Message.new(params[:store_manager_message])

    respond_to do |format|
      if @store_manager_message.save
        format.html { redirect_to @store_manager_message, notice: 'Message was successfully created.' }
        format.json { render json: @store_manager_message, status: :created, location: @store_manager_message }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/messages/1
  # PUT /store/manager/messages/1.json
  def update
    @store_manager_message = Store::Manager::Message.find(params[:id])

    respond_to do |format|
      if @store_manager_message.update_attributes(params[:store_manager_message])
        format.html { redirect_to @store_manager_message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/messages/1
  # DELETE /store/manager/messages/1.json
  def destroy
    @store_manager_message = Store::Manager::Message.find(params[:id])
    @store_manager_message.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_messages_url }
      format.json { head :no_content }
    end
  end
end
