class Post < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, presence: true

  belongs_to :user

  mount_uploader :image, ImagesUploader

end
