class GalleryImage < ApplicationRecord
  belongs_to :gallery
  has_attached_file :image, styles: { large: "800x600>", thumb: "150x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
