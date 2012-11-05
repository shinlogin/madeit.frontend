class Home::Searches::MessagesController < ApplicationController
  # GET /home/searches/messages
  # GET /home/searches/messages.json
  def index
    @home_searches_messages = Home::Searches::Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_searches_messages }
    end
  end

  # GET /home/searches/messages/1
  # GET /home/searches/messages/1.json
  def show
    @home_searches_message = Home::Searches::Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_searches_message }
    end
  end

  # GET /home/searches/messages/new
  # GET /home/searches/messages/new.json
  def new
    @home_searches_message = Home::Searches::Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_searches_message }
    end
  end

  # GET /home/searches/messages/1/edit
  def edit
    @home_searches_message = Home::Searches::Message.find(params[:id])
  end

  # POST /home/searches/messages
  # POST /home/searches/messages.json
  def create
    @home_searches_message = Home::Searches::Message.new(params[:home_searches_message])

    respond_to do |format|
      if @home_searches_message.save
        format.html { redirect_to @home_searches_message, notice: 'Message was successfully created.' }
        format.json { render json: @home_searches_message, status: :created, location: @home_searches_message }
      else
        format.html { render action: "new" }
        format.json { render json: @home_searches_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/searches/messages/1
  # PUT /home/searches/messages/1.json
  def update
    @home_searches_message = Home::Searches::Message.find(params[:id])

    respond_to do |format|
      if @home_searches_message.update_attributes(params[:home_searches_message])
        format.html { redirect_to @home_searches_message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_searches_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/searches/messages/1
  # DELETE /home/searches/messages/1.json
  def destroy
    @home_searches_message = Home::Searches::Message.find(params[:id])
    @home_searches_message.destroy

    respond_to do |format|
      format.html { redirect_to home_searches_messages_url }
      format.json { head :no_content }
    end
  end
end
