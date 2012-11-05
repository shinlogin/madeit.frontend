class Home::Categories::Products::ReportsController < ApplicationController
  # GET /home/categories/products/reports
  # GET /home/categories/products/reports.json
  def index
    @home_categories_products_reports = Home::Categories::Products::Report.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_categories_products_reports }
    end
  end

  # GET /home/categories/products/reports/1
  # GET /home/categories/products/reports/1.json
  def show
    @home_categories_products_report = Home::Categories::Products::Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_categories_products_report }
    end
  end

  # GET /home/categories/products/reports/new
  # GET /home/categories/products/reports/new.json
  def new
    @home_categories_products_report = Home::Categories::Products::Report.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_categories_products_report }
    end
  end

  # GET /home/categories/products/reports/1/edit
  def edit
    @home_categories_products_report = Home::Categories::Products::Report.find(params[:id])
  end

  # POST /home/categories/products/reports
  # POST /home/categories/products/reports.json
  def create
    @home_categories_products_report = Home::Categories::Products::Report.new(params[:home_categories_products_report])

    respond_to do |format|
      if @home_categories_products_report.save
        format.html { redirect_to @home_categories_products_report, notice: 'Report was successfully created.' }
        format.json { render json: @home_categories_products_report, status: :created, location: @home_categories_products_report }
      else
        format.html { render action: "new" }
        format.json { render json: @home_categories_products_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/categories/products/reports/1
  # PUT /home/categories/products/reports/1.json
  def update
    @home_categories_products_report = Home::Categories::Products::Report.find(params[:id])

    respond_to do |format|
      if @home_categories_products_report.update_attributes(params[:home_categories_products_report])
        format.html { redirect_to @home_categories_products_report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_categories_products_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/categories/products/reports/1
  # DELETE /home/categories/products/reports/1.json
  def destroy
    @home_categories_products_report = Home::Categories::Products::Report.find(params[:id])
    @home_categories_products_report.destroy

    respond_to do |format|
      format.html { redirect_to home_categories_products_reports_url }
      format.json { head :no_content }
    end
  end
end
