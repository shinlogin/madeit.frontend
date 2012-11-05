class Store::Manager::Indices::GuidesController < ApplicationController
  # GET /store/manager/indices/guides
  # GET /store/manager/indices/guides.json
  def index
    @store_manager_indices_guides = Store::Manager::Indices::Guide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_indices_guides }
    end
  end

  # GET /store/manager/indices/guides/1
  # GET /store/manager/indices/guides/1.json
  def show
    @store_manager_indices_guide = Store::Manager::Indices::Guide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_indices_guide }
    end
  end

  # GET /store/manager/indices/guides/new
  # GET /store/manager/indices/guides/new.json
  def new
    @store_manager_indices_guide = Store::Manager::Indices::Guide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_indices_guide }
    end
  end

  # GET /store/manager/indices/guides/1/edit
  def edit
    @store_manager_indices_guide = Store::Manager::Indices::Guide.find(params[:id])
  end

  # POST /store/manager/indices/guides
  # POST /store/manager/indices/guides.json
  def create
    @store_manager_indices_guide = Store::Manager::Indices::Guide.new(params[:store_manager_indices_guide])

    respond_to do |format|
      if @store_manager_indices_guide.save
        format.html { redirect_to @store_manager_indices_guide, notice: 'Guide was successfully created.' }
        format.json { render json: @store_manager_indices_guide, status: :created, location: @store_manager_indices_guide }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_indices_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/indices/guides/1
  # PUT /store/manager/indices/guides/1.json
  def update
    @store_manager_indices_guide = Store::Manager::Indices::Guide.find(params[:id])

    respond_to do |format|
      if @store_manager_indices_guide.update_attributes(params[:store_manager_indices_guide])
        format.html { redirect_to @store_manager_indices_guide, notice: 'Guide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_indices_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/indices/guides/1
  # DELETE /store/manager/indices/guides/1.json
  def destroy
    @store_manager_indices_guide = Store::Manager::Indices::Guide.find(params[:id])
    @store_manager_indices_guide.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_indices_guides_url }
      format.json { head :no_content }
    end
  end
end
