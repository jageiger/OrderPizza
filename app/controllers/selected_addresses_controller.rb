class SelectedAddressesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_selected_address, only: [:show, :edit, :update, :destroy]

  # GET /selected_addresses
  # GET /selected_addresses.json
  def index
    @selected_addresses = SelectedAddress.all
  end

  # GET /selected_addresses/1
  # GET /selected_addresses/1.json
  def show
  end

  # GET /selected_addresses/new
  def new
    @selected_address = SelectedAddress.new
  end

  # GET /selected_addresses/1/edit
  def edit
  end

  # POST /selected_addresses
  # POST /selected_addresses.json
  def create
    @selected_address = SelectedAddress.new(selected_address_params)

    respond_to do |format|
      if @selected_address.save
        format.html { redirect_to @selected_address, notice: 'Selected address was successfully created.' }
        format.json { render :show, status: :created, location: @selected_address }
      else
        format.html { render :new }
        format.json { render json: @selected_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_addresses/1
  # PATCH/PUT /selected_addresses/1.json
  def update
    respond_to do |format|
      if @selected_address.update(selected_address_params)
        format.html { redirect_to @selected_address, notice: 'Selected address was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_address }
      else
        format.html { render :edit }
        format.json { render json: @selected_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_addresses/1
  # DELETE /selected_addresses/1.json
  def destroy
    @selected_address.destroy
    respond_to do |format|
      format.html { redirect_to selected_addresses_url, notice: 'Selected address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_address
      @selected_address = SelectedAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_address_params
      params.require(:selected_address).permit(:address_id, :user_id, :order_id)
    end
end
