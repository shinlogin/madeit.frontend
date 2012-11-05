class Home::Categories::SubsController < ApplicationController
  # GET /home/categories/subs
  # GET /home/categories/subs.json
  def index
    @home_categories_subs = Home::Categories::Sub.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_subs }
    end
  end

  # GET /home/categories/subs/1
  # GET /home/categories/subs/1.json
  def show
    @home_categories_sub = Home::Categories::Sub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_sub }
    end
  end

  # GET /home/categories/subs/new
  # GET /home/categories/subs/new.json
  def new
    @home_categories_sub = Home::Categories::Sub.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_sub }
    end
  end

  # GET /home/categories/subs/1/edit
  def edit
    @home_categories_sub = Home::Categories::Sub.find(params[:id])
  end

  # POST /home/categories/subs
  # POST /home/categories/subs.json
  def create
    @home_categories_sub = Home::Categories::Sub.new(params[:home_categories_sub])

    respond_to do |format|
      if @home_categories_sub.save
        format.html { redirect_to @home_categories_sub, notice: 'Sub was successfully created.' }
        format.json { render json: @home_categories_sub, status: :created, location: @home_categories_sub }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/subs/1
  # PUT /home/categories/subs/1.json
  def update
    @home_categories_sub = Home::Categories::Sub.find(params[:id])

    respond_to do |format|
      if @home_categories_sub.update_attributes(params[:home_categories_sub])
        format.html { redirect_to @home_categories_sub, notice: 'Sub was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/subs/1
  # DELETE /home/categories/subs/1.json
  def destroy
    @home_categories_sub = Home::Categories::Sub.find(params[:id])
    @home_categories_sub.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_subs_url }
      format.json { head :no_content }
    end
  end
end
