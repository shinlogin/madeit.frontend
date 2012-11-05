class Store::Manager::Messages::Folders::MessagesController < ApplicationController
  # GET /store/manager/messages/folders/messages
  # GET /store/manager/messages/folders/messages.json
  def index
    @store_manager_messages_folders_messages = Store::Manager::Messages::Folders::Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_messages_folders_messages }
    end
  end

  # GET /store/manager/messages/folders/messages/1
  # GET /store/manager/messages/folders/messages/1.json
  def show
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_messages_folders_message }
    end
  end

  # GET /store/manager/messages/folders/messages/new
  # GET /store/manager/messages/folders/messages/new.json
  def new
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_messages_folders_message }
    end
  end

  # GET /store/manager/messages/folders/messages/1/edit
  def edit
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.find(params[:id])
  end

  # POST /store/manager/messages/folders/messages
  # POST /store/manager/messages/folders/messages.json
  def create
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.new(params[:store_manager_messages_folders_message])

    respond_to do |format|
      if @store_manager_messages_folders_message.save
        format.html { redirect_to @store_manager_messages_folders_message, notice: 'Message was successfully created.' }
        format.json { render json: @store_manager_messages_folders_message, status: :created, location: @store_manager_messages_folders_message }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_messages_folders_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/messages/folders/messages/1
  # PUT /store/manager/messages/folders/messages/1.json
  def update
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.find(params[:id])

    respond_to do |format|
      if @store_manager_messages_folders_message.update_attributes(params[:store_manager_messages_folders_message])
        format.html { redirect_to @store_manager_messages_folders_message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_messages_folders_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/messages/folders/messages/1
  # DELETE /store/manager/messages/folders/messages/1.json
  def destroy
    @store_manager_messages_folders_message = Store::Manager::Messages::Folders::Message.find(params[:id])
    @store_manager_messages_folders_message.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_messages_folders_messages_url }
      format.json { head :no_content }
    end
  end
end
