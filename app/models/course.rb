class Course < ActiveRecord::Base
  belongs_to :user
  has_many :course_users
  has_many :participants, through: :course_users, source: :user

  validates :title, presence: true, length: { maximum: 30 }

  scope :recent, -> { order(created_at: :desc) }

  mount_uploader :picture, CoursePictureUploader
end
