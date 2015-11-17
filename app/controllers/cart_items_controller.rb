class CartItemsController < ApplicationController
  before_action :set_cart_item, only: [:show, :edit, :update, :destroy]
  before_action :set_order, only: [:new, :add_to_cart]

  # GET /cart_items
  # GET /cart_items.json
  def index
    @cart_items = CartItem.all
  end
  
  def cart
    @cart_items = CartItem.all
  end
  
  def add_to_cart
    puts "Hey, this is printed"
    @item = Item.find(params[:item])
    @cart_item = CartItem.new
    @cart_item.order = @order
    @cart_item.user = current_user
    @cart_item.item = @item
    @cart_item.save
    redirect_to edit_cart_item_path(@cart_item)
  end

  # GET /cart_items/1
  # GET /cart_items/1.json
  def show
    @item = Item.find(@cart_item.item_id)
  end

  # GET /cart_items/new
  def new
    @item = Item.find(params[:item])
    @cart_item = CartItem.new
    @cart_item.order = @order
    @cart_item.user = current_user
     @cart_item.item = @item
  end

  # GET /cart_items/1/edit
  def edit
    # This method needs work. It's reusing some code and is missing definitions.
    @item = Item.find(@cart_item.item_id)
  end

  # POST /cart_items
  # POST /cart_items.json
  def create
    @cart_item = CartItem.new(cart_item_params)

    respond_to do |format|
      if @cart_item.save
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully created.' }
        format.json { render :show, status: :created, location: @cart_item }
      else
        format.html { render :new }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_items/1
  # PATCH/PUT /cart_items/1.json
  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to orders_path, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1
  # DELETE /cart_items/1.json
  def destroy
    @cart_item.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Item was successfully removed from cart.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_item_params
      params.require(:cart_item).permit(:user_id, :order_id, :item_id, :price, :quantity, :special_instructions)
    end
    
    def set_order
      @orders = Order.all.select{|t| t.user == current_user}.sort_by &:created_at
      @user = current_user
      if @orders.empty?
        @order = Order.new
        @order.user = @user
        @order.save
        @user.open_order = @order.id
        @user.save
      else
        @order = Order.find(current_user.open_order)
      end
    end

end
