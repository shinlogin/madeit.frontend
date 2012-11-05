class Home::IndicesController < ApplicationController
  # GET /home/indices
  # GET /home/indices.json
  def index
    @home_indices = Home::Index.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_indices }
    end
  end

  # GET /home/indices/1
  # GET /home/indices/1.json
  def show
    @home_index = Home::Index.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_index }
    end
  end

  # GET /home/indices/new
  # GET /home/indices/new.json
  def new
    @home_index = Home::Index.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_index }
    end
  end

  # GET /home/indices/1/edit
  def edit
    @home_index = Home::Index.find(params[:id])
  end

  # POST /home/indices
  # POST /home/indices.json
  def create
    @home_index = Home::Index.new(params[:home_index])

    respond_to do |format|
      if @home_index.save
        format.html { redirect_to @home_index, notice: 'Index was successfully created.' }
        format.json { render json: @home_index, status: :created, location: @home_index }
      else
        format.html { render action: "new" }
        format.json { render json: @home_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/indices/1
  # PUT /home/indices/1.json
  def update
    @home_index = Home::Index.find(params[:id])

    respond_to do |format|
      if @home_index.update_attributes(params[:home_index])
        format.html { redirect_to @home_index, notice: 'Index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/indices/1
  # DELETE /home/indices/1.json
  def destroy
    @home_index = Home::Index.find(params[:id])
    @home_index.destroy

    respond_to do |format|
      format.html { redirect_to home_indices_url }
      format.json { head :no_content }
    end
  end
end
