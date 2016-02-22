class Course < ActiveRecord::Base
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 30 }

  scope :recent, -> { order(created_at: :desc) }

  mount_uploader :picture, CoursePictureUploader
end
