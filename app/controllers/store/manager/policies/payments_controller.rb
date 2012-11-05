class Store::Manager::Policies::PaymentsController < ApplicationController
  # GET /store/manager/policies/payments
  # GET /store/manager/policies/payments.json
  def index
    @store_manager_policies_payments = Store::Manager::Policies::Payment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_manager_policies_payments }
    end
  end

  # GET /store/manager/policies/payments/1
  # GET /store/manager/policies/payments/1.json
  def show
    @store_manager_policies_payment = Store::Manager::Policies::Payment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_manager_policies_payment }
    end
  end

  # GET /store/manager/policies/payments/new
  # GET /store/manager/policies/payments/new.json
  def new
    @store_manager_policies_payment = Store::Manager::Policies::Payment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_manager_policies_payment }
    end
  end

  # GET /store/manager/policies/payments/1/edit
  def edit
    @store_manager_policies_payment = Store::Manager::Policies::Payment.find(params[:id])
  end

  # POST /store/manager/policies/payments
  # POST /store/manager/policies/payments.json
  def create
    @store_manager_policies_payment = Store::Manager::Policies::Payment.new(params[:store_manager_policies_payment])

    respond_to do |format|
      if @store_manager_policies_payment.save
        format.html { redirect_to @store_manager_policies_payment, notice: 'Payment was successfully created.' }
        format.json { render json: @store_manager_policies_payment, status: :created, location: @store_manager_policies_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @store_manager_policies_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store/manager/policies/payments/1
  # PUT /store/manager/policies/payments/1.json
  def update
    @store_manager_policies_payment = Store::Manager::Policies::Payment.find(params[:id])

    respond_to do |format|
      if @store_manager_policies_payment.update_attributes(params[:store_manager_policies_payment])
        format.html { redirect_to @store_manager_policies_payment, notice: 'Payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_manager_policies_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/manager/policies/payments/1
  # DELETE /store/manager/policies/payments/1.json
  def destroy
    @store_manager_policies_payment = Store::Manager::Policies::Payment.find(params[:id])
    @store_manager_policies_payment.destroy

    respond_to do |format|
      format.html { redirect_to store_manager_policies_payments_url }
      format.json { head :no_content }
    end
  end
end
