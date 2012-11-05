class Home::EventsController < ApplicationController
  # GET /home/events
  # GET /home/events.json
  def index
    @home_events = Home::Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_events }
    end
  end

  # GET /home/events/1
  # GET /home/events/1.json
  def show
    @home_event = Home::Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_event }
    end
  end

  # GET /home/events/new
  # GET /home/events/new.json
  def new
    @home_event = Home::Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_event }
    end
  end

  # GET /home/events/1/edit
  def edit
    @home_event = Home::Event.find(params[:id])
  end

  # POST /home/events
  # POST /home/events.json
  def create
    @home_event = Home::Event.new(params[:home_event])

    respond_to do |format|
      if @home_event.save
        format.html { redirect_to @home_event, notice: 'Event was successfully created.' }
        format.json { render json: @home_event, status: :created, location: @home_event }
      else
        format.html { render action: "new" }
        format.json { render json: @home_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/events/1
  # PUT /home/events/1.json
  def update
    @home_event = Home::Event.find(params[:id])

    respond_to do |format|
      if @home_event.update_attributes(params[:home_event])
        format.html { redirect_to @home_event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/events/1
  # DELETE /home/events/1.json
  def destroy
    @home_event = Home::Event.find(params[:id])
    @home_event.destroy

    respond_to do |format|
      format.html { redirect_to home_events_url }
      format.json { head :no_content }
    end
  end
end
