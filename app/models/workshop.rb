class Workshop < ApplicationRecord
  validates :title, :description, presence: true

  mount_uploader :image, ImageUploader
end
