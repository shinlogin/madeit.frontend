class Store::Manager::SettingsController < ApplicationController
  # GET /store/manager/settings
  # GET /store/manager/settings.json
  def index
    @store_manager_settings = Store::Manager::Setting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_settings }
    end
  end

  # GET /store/manager/settings/1
  # GET /store/manager/settings/1.json
  def show
    @store_manager_setting = Store::Manager::Setting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_setting }
    end
  end

  # GET /store/manager/settings/new
  # GET /store/manager/settings/new.json
  def new
    @store_manager_setting = Store::Manager::Setting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_setting }
    end
  end

  # GET /store/manager/settings/1/edit
  def edit
    @store_manager_setting = Store::Manager::Setting.find(params[:id])
  end

  # POST /store/manager/settings
  # POST /store/manager/settings.json
  def create
    @store_manager_setting = Store::Manager::Setting.new(params[:store_manager_setting])

    respond_to do |format|
      if @store_manager_setting.save
        format.html { redirect_to @store_manager_setting, notice: 'Setting was successfully created.' }
        format.json { render json: @store_manager_setting, status: :created, location: @store_manager_setting }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/settings/1
  # PUT /store/manager/settings/1.json
  def update
    @store_manager_setting = Store::Manager::Setting.find(params[:id])

    respond_to do |format|
      if @store_manager_setting.update_attributes(params[:store_manager_setting])
        format.html { redirect_to @store_manager_setting, notice: 'Setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/settings/1
  # DELETE /store/manager/settings/1.json
  def destroy
    @store_manager_setting = Store::Manager::Setting.find(params[:id])
    @store_manager_setting.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_settings_url }
      format.json { head :no_content }
    end
  end
end
