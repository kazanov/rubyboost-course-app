class CoursePictureUploader < BaseUploader
  version :admin do
    process resize_to_fit: [600, 400]
  end

  version :thumb do
    process resize_to_fit: [300, 200]
  end
end
