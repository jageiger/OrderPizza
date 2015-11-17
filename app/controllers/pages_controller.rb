class PagesController < ApplicationController
  before_action :set_order, only: [:select, :payment]
  
  def landing
    unless user_signed_in?
      flash[:notice] = 'Please login'
      redirect_to new_user_session_path
    end
  end
  
  def menu
    @categories = Category.all
    @next_hue = 0
  end
  
  def select
    # this page might actually be completely unncessary... because at the orders page, I show both of the options already. Well.
  end
  
  def payment
    # @item = Item.find(params[:item])
  end
  
  private
  
    def set_order
      @orders = Order.all.select{|t| t.user == current_user}.sort_by &:created_at
      @user = current_user
      if @orders.empty?
        @order = Order.new
        @order.user = @user
        @order.save
        @user.open_order = @order.id
        @user.save
        #actually, if @orders.empty? then redirect! Only show link to payment page once cart_items exist (and if delivery... $15 minimum is met)
      else
        @order = Order.find(current_user.open_order)
      end
    end
  
end
