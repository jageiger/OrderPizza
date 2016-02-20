class SelectedSizesController < ApplicationController
  before_action :set_selected_size, only: [:show, :edit, :update, :destroy]

  # GET /selected_sizes
  # GET /selected_sizes.json
  def index
    @selected_sizes = SelectedSize.all
  end

  # GET /selected_sizes/1
  # GET /selected_sizes/1.json
  def show
  end

  # GET /selected_sizes/new
  def new
    @selected_size = SelectedSize.new
  end

  # GET /selected_sizes/1/edit
  def edit
  end

  # POST /selected_sizes
  # POST /selected_sizes.json
  def create
    @selected_size = SelectedSize.new(selected_size_params)

    if(SelectedSize.all.select{ |t| t.cart_item_id == @selected_size.cart_item_id}.any?)
      #there is already an association, redirect, don't save!
      
      respond_to do |format|
        format.html { redirect_to selected_sizes_url, notice: 'Something went wrong.' }
        format.json { head :no_content }
      end
      
    else
      respond_to do |format|
        if @selected_size.save
          format.js
        else
          format.js
        end
      end
    end
    
  end

  # PATCH/PUT /selected_sizes/1
  # PATCH/PUT /selected_sizes/1.json
  def update
  

    # Okay. so what I do, is... I create some attribute that I automatically fill out with a different set number for each different form...
    # then I check what that value is, and depending on that, ... can I do different format files?
    # Or do I just use different div names on different screens, and in the js just replace 'em all?
    # Yeah, that sounds easier.

    # if @selected_size.form_number == selected_size_params[:form_number] #ignore this line, bro
    # if selected_size_params[:form_number] == 1 
    #  respond_to do |format|
    #    if @cart_item.update(cart_item_params)
    #      format.html { redirect_to orders_path, notice: 'Item was successfully updated.' }
    #      format.json { render :show, status: :ok, location: @cart_item }
    #    else
    #      format.html { render :edit }
    #      format.json { render json: @cart_item.errors, status: :unprocessable_entity }
    #    end
    #  end
        
    # else 
      
      respond_to do |format|
        if @selected_size.update(selected_size_params)
          format.js
        else
          format.js
        end
      end
      
    #end
  end

  # DELETE /selected_sizes/1
  # DELETE /selected_sizes/1.json
  def destroy
    @selected_size.destroy
    respond_to do |format|
      format.html { redirect_to selected_sizes_url, notice: 'Selected size was successfully destroyed.' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_size
      @selected_size = SelectedSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_size_params
      params.require(:selected_size).permit(:cart_item_id, :item_size_id)
    end
end
