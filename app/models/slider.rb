class Slider < ApplicationRecord
	has_attached_file :image, styles: { thumb: "300x200#", large: "1200x520#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
