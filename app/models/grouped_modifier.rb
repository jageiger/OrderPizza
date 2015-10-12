class GroupedModifier < ActiveRecord::Base
  belongs_to :modifer_group
  belongs_to :modifiers
  
  # This could possibly be deprecated, using has_and_belongs_to_many instead for the modifier and modifier_group models
end
