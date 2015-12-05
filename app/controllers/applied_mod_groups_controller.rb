class AppliedModGroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_applied_mod_group, only: [:show, :edit, :update, :destroy]

  # GET /applied_mod_groups
  # GET /applied_mod_groups.json
  def index
    @applied_mod_groups = AppliedModGroup.all
  end

  # GET /applied_mod_groups/1
  # GET /applied_mod_groups/1.json
  def show
  end

  # GET /applied_mod_groups/new
  def new
    @modifier_groups = ModifierGroup.all
    @items = Item.all
    @applied_mod_group = AppliedModGroup.new
  end

  # GET /applied_mod_groups/1/edit
  def edit
    @modifier_groups = ModifierGroup.all
    @items = Item.all
  end

  # POST /applied_mod_groups
  # POST /applied_mod_groups.json
  def create
    @applied_mod_group = AppliedModGroup.new(applied_mod_group_params)

    respond_to do |format|
      if @applied_mod_group.save
        format.html { redirect_to @applied_mod_group, notice: 'Applied mod group was successfully created.' }
        format.json { render :show, status: :created, location: @applied_mod_group }
      else
        format.html { render :new }
        format.json { render json: @applied_mod_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applied_mod_groups/1
  # PATCH/PUT /applied_mod_groups/1.json
  def update
    respond_to do |format|
      if @applied_mod_group.update(applied_mod_group_params)
        format.html { redirect_to @applied_mod_group, notice: 'Applied mod group was successfully updated.' }
        format.json { render :show, status: :ok, location: @applied_mod_group }
      else
        format.html { render :edit }
        format.json { render json: @applied_mod_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_mod_groups/1
  # DELETE /applied_mod_groups/1.json
  def destroy
    @applied_mod_group.destroy
    respond_to do |format|
      format.html { redirect_to applied_mod_groups_url, notice: 'Applied mod group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applied_mod_group
      @applied_mod_group = AppliedModGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applied_mod_group_params
      params.require(:applied_mod_group).permit(:modifier_group_id, :item_id)
    end
end
