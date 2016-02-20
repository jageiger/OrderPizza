class Modifier < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
