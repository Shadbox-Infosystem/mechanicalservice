# frozen_string_literal: true

class TeamMember < ApplicationRecord
  has_one_attached :photo
  validates :name, :role, presence: true
  validates :photo, content_type: ['image/png', 'image/jpeg', 'image/gif'], size: { less_than: 5.megabytes }, if: lambda {
    photo.attached?
  }
  default_scope { order(position: :asc) }

  def photo_or_url
    if photo.attached?
      photo
    elsif photo_url.present?
      photo_url
    end
  end
end
