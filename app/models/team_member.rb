# frozen_string_literal: true

class TeamMember < ApplicationRecord
  has_attached_file :photo, styles: { medium: "150x150>", thumb: "50x50>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :name, :role, presence: true
  default_scope { order(position: :asc) }

  def photo_or_url
    if photo.exists?
      photo
    elsif photo_url.present?
      photo_url
    end
  end
end
