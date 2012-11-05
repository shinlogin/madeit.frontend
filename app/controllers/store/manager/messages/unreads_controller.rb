class Store::Manager::Messages::UnreadsController < ApplicationController
  # GET /store/manager/messages/unreads
  # GET /store/manager/messages/unreads.json
  def index
    @store_manager_messages_unreads = Store::Manager::Messages::Unread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_messages_unreads }
    end
  end

  # GET /store/manager/messages/unreads/1
  # GET /store/manager/messages/unreads/1.json
  def show
    @store_manager_messages_unread = Store::Manager::Messages::Unread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_messages_unread }
    end
  end

  # GET /store/manager/messages/unreads/new
  # GET /store/manager/messages/unreads/new.json
  def new
    @store_manager_messages_unread = Store::Manager::Messages::Unread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_messages_unread }
    end
  end

  # GET /store/manager/messages/unreads/1/edit
  def edit
    @store_manager_messages_unread = Store::Manager::Messages::Unread.find(params[:id])
  end

  # POST /store/manager/messages/unreads
  # POST /store/manager/messages/unreads.json
  def create
    @store_manager_messages_unread = Store::Manager::Messages::Unread.new(params[:store_manager_messages_unread])

    respond_to do |format|
      if @store_manager_messages_unread.save
        format.html { redirect_to @store_manager_messages_unread, notice: 'Unread was successfully created.' }
        format.json { render json: @store_manager_messages_unread, status: :created, location: @store_manager_messages_unread }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_messages_unread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/messages/unreads/1
  # PUT /store/manager/messages/unreads/1.json
  def update
    @store_manager_messages_unread = Store::Manager::Messages::Unread.find(params[:id])

    respond_to do |format|
      if @store_manager_messages_unread.update_attributes(params[:store_manager_messages_unread])
        format.html { redirect_to @store_manager_messages_unread, notice: 'Unread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_messages_unread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/messages/unreads/1
  # DELETE /store/manager/messages/unreads/1.json
  def destroy
    @store_manager_messages_unread = Store::Manager::Messages::Unread.find(params[:id])
    @store_manager_messages_unread.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_messages_unreads_url }
      format.json { head :no_content }
    end
  end
end
