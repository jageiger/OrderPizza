class Modifier < ActiveRecord::Base
  mount_uploader :file, ToppingUploader
end
