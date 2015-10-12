class CartItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :order
  has_many :selected_modifiers
end
