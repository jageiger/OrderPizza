class GroupedModifiersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_grouped_modifier, only: [:show, :edit, :update, :destroy]

  # GET /grouped_modifiers
  # GET /grouped_modifiers.json
  def index
    @grouped_modifiers = GroupedModifier.all
  end

  # GET /grouped_modifiers/1
  # GET /grouped_modifiers/1.json
  def show
  end

  # GET /grouped_modifiers/new
  def new
    @modifier_groups = ModifierGroup.all
    @modifiers = Modifier.all
    @grouped_modifier = GroupedModifier.new
  end

  # GET /grouped_modifiers/1/edit
  def edit
    @modifier_groups = ModifierGroup.all
    @modifiers = Modifier.all
  end

  # POST /grouped_modifiers
  # POST /grouped_modifiers.json
  def create
    @grouped_modifier = GroupedModifier.new(grouped_modifier_params)

    respond_to do |format|
      if @grouped_modifier.save
        format.html { redirect_to @grouped_modifier, notice: 'Grouped modifier was successfully created.' }
        format.json { render :show, status: :created, location: @grouped_modifier }
      else
        format.html { render :new }
        format.json { render json: @grouped_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grouped_modifiers/1
  # PATCH/PUT /grouped_modifiers/1.json
  def update
    respond_to do |format|
      if @grouped_modifier.update(grouped_modifier_params)
        format.html { redirect_to @grouped_modifier, notice: 'Grouped modifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @grouped_modifier }
      else
        format.html { render :edit }
        format.json { render json: @grouped_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grouped_modifiers/1
  # DELETE /grouped_modifiers/1.json
  def destroy
    @grouped_modifier.destroy
    respond_to do |format|
      format.html { redirect_to grouped_modifiers_url, notice: 'Grouped modifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grouped_modifier
      @grouped_modifier = GroupedModifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grouped_modifier_params
      params.require(:grouped_modifier).permit(:modifier_group_id, :modifier_id)
    end
end
