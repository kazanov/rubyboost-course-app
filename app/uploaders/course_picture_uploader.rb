 class CoursePictureUploader < BaseUploader

  process resize_to_fit: [500, 500]

  version :thumb do
    process resize_to_fit: [150,150]
  end

end