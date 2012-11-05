class Store::Manager::StatisticsController < ApplicationController
  # GET /store/manager/statistics
  # GET /store/manager/statistics.json
  def index
    @store_manager_statistics = Store::Manager::Statistic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_statistics }
    end
  end

  # GET /store/manager/statistics/1
  # GET /store/manager/statistics/1.json
  def show
    @store_manager_statistic = Store::Manager::Statistic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_statistic }
    end
  end

  # GET /store/manager/statistics/new
  # GET /store/manager/statistics/new.json
  def new
    @store_manager_statistic = Store::Manager::Statistic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_statistic }
    end
  end

  # GET /store/manager/statistics/1/edit
  def edit
    @store_manager_statistic = Store::Manager::Statistic.find(params[:id])
  end

  # POST /store/manager/statistics
  # POST /store/manager/statistics.json
  def create
    @store_manager_statistic = Store::Manager::Statistic.new(params[:store_manager_statistic])

    respond_to do |format|
      if @store_manager_statistic.save
        format.html { redirect_to @store_manager_statistic, notice: 'Statistic was successfully created.' }
        format.json { render json: @store_manager_statistic, status: :created, location: @store_manager_statistic }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/statistics/1
  # PUT /store/manager/statistics/1.json
  def update
    @store_manager_statistic = Store::Manager::Statistic.find(params[:id])

    respond_to do |format|
      if @store_manager_statistic.update_attributes(params[:store_manager_statistic])
        format.html { redirect_to @store_manager_statistic, notice: 'Statistic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/statistics/1
  # DELETE /store/manager/statistics/1.json
  def destroy
    @store_manager_statistic = Store::Manager::Statistic.find(params[:id])
    @store_manager_statistic.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_statistics_url }
      format.json { head :no_content }
    end
  end
end
