class CartItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :order
  belongs_to :user
  has_many :selected_modifiers, dependent: :destroy
  
  accepts_nested_attributes_for :item
end
