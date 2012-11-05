class Stores::ReportsController < ApplicationController
  # GET /stores/reports
  # GET /stores/reports.json
  def index
    @stores_reports = Stores::Report.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stores_reports }
    end
  end

  # GET /stores/reports/1
  # GET /stores/reports/1.json
  def show
    @stores_report = Stores::Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stores_report }
    end
  end

  # GET /stores/reports/new
  # GET /stores/reports/new.json
  def new
    @stores_report = Stores::Report.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stores_report }
    end
  end

  # GET /stores/reports/1/edit
  def edit
    @stores_report = Stores::Report.find(params[:id])
  end

  # POST /stores/reports
  # POST /stores/reports.json
  def create
    @stores_report = Stores::Report.new(params[:stores_report])

    respond_to do |format|
      if @stores_report.save
        format.html { redirect_to @stores_report, notice: 'Report was successfully created.' }
        format.json { render json: @stores_report, status: :created, location: @stores_report }
      else
        format.html { render action: "new" }
        format.json { render json: @stores_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stores/reports/1
  # PUT /stores/reports/1.json
  def update
    @stores_report = Stores::Report.find(params[:id])

    respond_to do |format|
      if @stores_report.update_attributes(params[:stores_report])
        format.html { redirect_to @stores_report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stores_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/reports/1
  # DELETE /stores/reports/1.json
  def destroy
    @stores_report = Stores::Report.find(params[:id])
    @stores_report.destroy

    respond_to do |format|
      format.html { redirect_to stores_reports_url }
      format.json { head :no_content }
    end
  end
end
