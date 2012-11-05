class Home::Indices::RecentliesController < ApplicationController
  # GET /home/indices/recentlies
  # GET /home/indices/recentlies.json
  def index
    @home_indices_recentlies = Home::Indices::Recently.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices_recentlies }
    end
  end

  # GET /home/indices/recentlies/1
  # GET /home/indices/recentlies/1.json
  def show
    @home_indices_recently = Home::Indices::Recently.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_indices_recently }
    end
  end

  # GET /home/indices/recentlies/new
  # GET /home/indices/recentlies/new.json
  def new
    @home_indices_recently = Home::Indices::Recently.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_indices_recently }
    end
  end

  # GET /home/indices/recentlies/1/edit
  def edit
    @home_indices_recently = Home::Indices::Recently.find(params[:id])
  end

  # POST /home/indices/recentlies
  # POST /home/indices/recentlies.json
  def create
    @home_indices_recently = Home::Indices::Recently.new(params[:home_indices_recently])

    respond_to do |format|
      if @home_indices_recently.save
        format.html { redirect_to @home_indices_recently, notice: 'Recently was successfully created.' }
        format.json { render json: @home_indices_recently, status: :created, location: @home_indices_recently }
      else
        format.html { render action: "new" }
        format.json { render json: @home_indices_recently.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/recentlies/1
  # PUT /home/indices/recentlies/1.json
  def update
    @home_indices_recently = Home::Indices::Recently.find(params[:id])

    respond_to do |format|
      if @home_indices_recently.update_attributes(params[:home_indices_recently])
        format.html { redirect_to @home_indices_recently, notice: 'Recently was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_indices_recently.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/recentlies/1
  # DELETE /home/indices/recentlies/1.json
  def destroy
    @home_indices_recently = Home::Indices::Recently.find(params[:id])
    @home_indices_recently.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_recentlies_url }
      format.json { head :no_content }
    end
  end
end
