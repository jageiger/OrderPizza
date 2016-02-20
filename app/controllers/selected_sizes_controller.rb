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

    respond_to do |format|
      if @selected_size.save
        format.html { redirect_to @selected_size, notice: 'Selected size was successfully created.' }
        format.json { render :show, status: :created, location: @selected_size }
      else
        format.html { render :new }
        format.json { render json: @selected_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_sizes/1
  # PATCH/PUT /selected_sizes/1.json
  def update
    respond_to do |format|
      if @selected_size.update(selected_size_params)
        format.html { redirect_to @selected_size, notice: 'Selected size was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_size }
      else
        format.html { render :edit }
        format.json { render json: @selected_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_sizes/1
  # DELETE /selected_sizes/1.json
  def destroy
    @selected_size.destroy
    respond_to do |format|
      format.html { redirect_to selected_sizes_url, notice: 'Selected size was successfully destroyed.' }
      format.json { head :no_content }
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
