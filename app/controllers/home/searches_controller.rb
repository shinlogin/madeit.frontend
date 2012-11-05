class Home::SearchesController < ApplicationController
  # GET /home/searches
  # GET /home/searches.json
  def index
    @home_searches = Home::Search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_searches }
    end
  end

  # GET /home/searches/1
  # GET /home/searches/1.json
  def show
    @home_search = Home::Search.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_search }
    end
  end

  # GET /home/searches/new
  # GET /home/searches/new.json
  def new
    @home_search = Home::Search.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_search }
    end
  end

  # GET /home/searches/1/edit
  def edit
    @home_search = Home::Search.find(params[:id])
  end

  # POST /home/searches
  # POST /home/searches.json
  def create
    @home_search = Home::Search.new(params[:home_search])

    respond_to do |format|
      if @home_search.save
        format.html { redirect_to @home_search, notice: 'Search was successfully created.' }
        format.json { render json: @home_search, status: :created, location: @home_search }
      else
        format.html { render action: "new" }
        format.json { render json: @home_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/searches/1
  # PUT /home/searches/1.json
  def update
    @home_search = Home::Search.find(params[:id])

    respond_to do |format|
      if @home_search.update_attributes(params[:home_search])
        format.html { redirect_to @home_search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/searches/1
  # DELETE /home/searches/1.json
  def destroy
    @home_search = Home::Search.find(params[:id])
    @home_search.destroy

    respond_to do |format|
      format.html { redirect_to home_searches_url }
      format.json { head :no_content }
    end
  end
end
