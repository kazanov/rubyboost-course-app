class Course < ActiveRecord::Base

	validates :title, presence: true, length: { maximum: 30 }
	
	scope :recent, -> { order(created_at: :desc) }

	mount_uploader :picture, CoursePictureUploader
end