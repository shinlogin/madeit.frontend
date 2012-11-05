class Store::IndicesController < ApplicationController
  # GET /store/indices
  # GET /store/indices.json
  def index
    @store_indices = Store::Index.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_indices }
    end
  end

  # GET /store/indices/1
  # GET /store/indices/1.json
  def show
    @store_index = Store::Index.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_index }
    end
  end

  # GET /store/indices/new
  # GET /store/indices/new.json
  def new
    @store_index = Store::Index.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_index }
    end
  end

  # GET /store/indices/1/edit
  def edit
    @store_index = Store::Index.find(params[:id])
  end

  # POST /store/indices
  # POST /store/indices.json
  def create
    @store_index = Store::Index.new(params[:store_index])

    respond_to do |format|
      if @store_index.save
        format.html { redirect_to @store_index, notice: 'Index was successfully created.' }
        format.json { render json: @store_index, status: :created, location: @store_index }
      else
        format.html { render action: "new" }
        format.json { render json: @store_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/indices/1
  # PUT /store/indices/1.json
  def update
    @store_index = Store::Index.find(params[:id])

    respond_to do |format|
      if @store_index.update_attributes(params[:store_index])
        format.html { redirect_to @store_index, notice: 'Index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/indices/1
  # DELETE /store/indices/1.json
  def destroy
    @store_index = Store::Index.find(params[:id])
    @store_index.destroy

    respond_to do |format|
      format.html { redirect_to store_indices_url }
      format.json { head :no_content }
    end
  end
end
