# frozen_string_literal: true

class Gallery < ApplicationRecord
  has_many_attached :images
  validates :title, presence: true
  validates :images, content_type: ['image/png', 'image/jpeg', 'image/gif'], size: { less_than: 5.megabytes }
end
