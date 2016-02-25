class CoursePictureUploader < BaseUploader
  process resize_to_fit: [500, 500]

  version :thumb do
    process resize_to_fit: [300, 200]
  end
end
