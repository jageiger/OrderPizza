class AppliedSizesController < ApplicationController
  before_action :set_applied_size, only: [:show, :edit, :update, :destroy]

  # GET /applied_sizes
  # GET /applied_sizes.json
  def index
    @applied_sizes = AppliedSize.all
  end

  # GET /applied_sizes/1
  # GET /applied_sizes/1.json
  def show
  end

  # GET /applied_sizes/new
  def new
    @items = Item.all
    @item_sizes = ItemSize.all
    @applied_size = AppliedSize.new
  end

  # GET /applied_sizes/1/edit
  def edit
    @items = Item.all
    @item_sizes = ItemSize.all
  end

  # POST /applied_sizes
  # POST /applied_sizes.json
  def create
    @applied_size = AppliedSize.new(applied_size_params)

    respond_to do |format|
      if @applied_size.save
        format.html { redirect_to @applied_size, notice: 'Applied size was successfully created.' }
        format.json { render :show, status: :created, location: @applied_size }
      else
        format.html { render :new }
        format.json { render json: @applied_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applied_sizes/1
  # PATCH/PUT /applied_sizes/1.json
  def update
    respond_to do |format|
      if @applied_size.update(applied_size_params)
        format.html { redirect_to @applied_size, notice: 'Applied size was successfully updated.' }
        format.json { render :show, status: :ok, location: @applied_size }
      else
        format.html { render :edit }
        format.json { render json: @applied_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_sizes/1
  # DELETE /applied_sizes/1.json
  def destroy
    @applied_size.destroy
    respond_to do |format|
      format.html { redirect_to applied_sizes_url, notice: 'Applied size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applied_size
      @applied_size = AppliedSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applied_size_params
      params.require(:applied_size).permit(:item_id, :item_size_id)
    end
end
