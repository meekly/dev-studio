class AdminUser < ApplicationRecord
  has_secure_password
  mount_uploader :userpic, UserpicUploader
end
