class Item < ActiveRecord::Base
  belongs_to :categorization
  has_many :cart_items
  has_many :applied_labels
  has_many :applied_mod_groups
end
