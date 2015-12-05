class AppliedLabelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_applied_label, only: [:show, :edit, :update, :destroy]

  # GET /applied_labels
  # GET /applied_labels.json
  def index
    @applied_labels = AppliedLabel.all
  end

  # GET /applied_labels/1
  # GET /applied_labels/1.json
  def show
  end

  # GET /applied_labels/new
  def new
    @items = Item.all
    @labels = Label.all
    @applied_label = AppliedLabel.new
  end

  # GET /applied_labels/1/edit
  def edit
    @items = Item.all
    @labels = Label.all
  end

  # POST /applied_labels
  # POST /applied_labels.json
  def create
    @applied_label = AppliedLabel.new(applied_label_params)

    respond_to do |format|
      if @applied_label.save
        format.html { redirect_to @applied_label, notice: 'Applied label was successfully created.' }
        format.json { render :show, status: :created, location: @applied_label }
      else
        format.html { render :new }
        format.json { render json: @applied_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applied_labels/1
  # PATCH/PUT /applied_labels/1.json
  def update
    respond_to do |format|
      if @applied_label.update(applied_label_params)
        format.html { redirect_to @applied_label, notice: 'Applied label was successfully updated.' }
        format.json { render :show, status: :ok, location: @applied_label }
      else
        format.html { render :edit }
        format.json { render json: @applied_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_labels/1
  # DELETE /applied_labels/1.json
  def destroy
    @applied_label.destroy
    respond_to do |format|
      format.html { redirect_to applied_labels_url, notice: 'Applied label was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applied_label
      @applied_label = AppliedLabel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applied_label_params
      params.require(:applied_label).permit(:item_id, :label_id, :daily_special, :day)
    end
end
