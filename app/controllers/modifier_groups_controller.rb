class ModifierGroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_modifier_group, only: [:show, :edit, :update, :destroy]

  # GET /modifier_groups
  # GET /modifier_groups.json
  def index
    @modifier_groups = ModifierGroup.all
  end

  # GET /modifier_groups/1
  # GET /modifier_groups/1.json
  def show
  end

  # GET /modifier_groups/new
  def new
    @modifier_groups = ModifierGroup.all
    @modifier_group = ModifierGroup.new
  end

  # GET /modifier_groups/1/edit
  def edit
    @modifier_groups = ModifierGroup.all
  end

  # POST /modifier_groups
  # POST /modifier_groups.json
  def create
    @modifier_group = ModifierGroup.new(modifier_group_params)

    respond_to do |format|
      if @modifier_group.save
        format.html { redirect_to @modifier_group, notice: 'Modifier group was successfully created.' }
        format.json { render :show, status: :created, location: @modifier_group }
      else
        format.html { render :new }
        format.json { render json: @modifier_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modifier_groups/1
  # PATCH/PUT /modifier_groups/1.json
  def update
    respond_to do |format|
      if @modifier_group.update(modifier_group_params)
        format.html { redirect_to @modifier_group, notice: 'Modifier group was successfully updated.' }
        format.json { render :show, status: :ok, location: @modifier_group }
      else
        format.html { render :edit }
        format.json { render json: @modifier_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modifier_groups/1
  # DELETE /modifier_groups/1.json
  def destroy
    @modifier_group.destroy
    respond_to do |format|
      format.html { redirect_to modifier_groups_url, notice: 'Modifier group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modifier_group
      @modifier_group = ModifierGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modifier_group_params
      params.require(:modifier_group).permit(:name, :child, :parent_modifier_group_id, :prepend_name, :display_name, :add_price, :mult_price, :exclusive, :max_num_of_modifiers, :interface_position)
    end
end
