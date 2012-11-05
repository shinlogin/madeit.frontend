class Store::Manager::Messages::FoldersController < ApplicationController
  # GET /store/manager/messages/folders
  # GET /store/manager/messages/folders.json
  def index
    @store_manager_messages_folders = Store::Manager::Messages::Folder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_messages_folders }
    end
  end

  # GET /store/manager/messages/folders/1
  # GET /store/manager/messages/folders/1.json
  def show
    @store_manager_messages_folder = Store::Manager::Messages::Folder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_messages_folder }
    end
  end

  # GET /store/manager/messages/folders/new
  # GET /store/manager/messages/folders/new.json
  def new
    @store_manager_messages_folder = Store::Manager::Messages::Folder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_messages_folder }
    end
  end

  # GET /store/manager/messages/folders/1/edit
  def edit
    @store_manager_messages_folder = Store::Manager::Messages::Folder.find(params[:id])
  end

  # POST /store/manager/messages/folders
  # POST /store/manager/messages/folders.json
  def create
    @store_manager_messages_folder = Store::Manager::Messages::Folder.new(params[:store_manager_messages_folder])

    respond_to do |format|
      if @store_manager_messages_folder.save
        format.html { redirect_to @store_manager_messages_folder, notice: 'Folder was successfully created.' }
        format.json { render json: @store_manager_messages_folder, status: :created, location: @store_manager_messages_folder }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_messages_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/messages/folders/1
  # PUT /store/manager/messages/folders/1.json
  def update
    @store_manager_messages_folder = Store::Manager::Messages::Folder.find(params[:id])

    respond_to do |format|
      if @store_manager_messages_folder.update_attributes(params[:store_manager_messages_folder])
        format.html { redirect_to @store_manager_messages_folder, notice: 'Folder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_messages_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/messages/folders/1
  # DELETE /store/manager/messages/folders/1.json
  def destroy
    @store_manager_messages_folder = Store::Manager::Messages::Folder.find(params[:id])
    @store_manager_messages_folder.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_messages_folders_url }
      format.json { head :no_content }
    end
  end
end
