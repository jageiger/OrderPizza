class AppliedModGroup < ActiveRecord::Base
  belongs_to :item
  has_one :modifier_group
end
