class AdminUser < ApplicationRecord
  has_secure_password
  mount_uploader :userpic, UserpicUploader

	has_many :articles
	has_many :tasks
end
