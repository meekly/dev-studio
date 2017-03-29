class Task < ApplicationRecord
  belongs_to :project
  belongs_to :admin_user
end
