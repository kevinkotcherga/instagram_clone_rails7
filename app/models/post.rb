class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)

  validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end
