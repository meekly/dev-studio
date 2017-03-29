class Article < ApplicationRecord
	mount_uploader :photo, ArticlePhotoUploader

  belongs_to :admin_user
end
