class SelectedModifier < ActiveRecord::Base
  belongs_to :cart_item
  
  validates_presence_of :cart_item
end
