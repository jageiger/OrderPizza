class AppliedLabel < ActiveRecord::Base
  has_one :label
  belongs_to :item
  belongs_to :cart_item
end
