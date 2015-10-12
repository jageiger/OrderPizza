class ModifierGroup < ActiveRecord::Base
  has_many :modifiers, through: :grouped_modifiers
end
