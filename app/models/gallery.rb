# frozen_string_literal: true

class Gallery < ApplicationRecord
  has_many :gallery_images, dependent: :destroy
  accepts_nested_attributes_for :gallery_images, allow_destroy: true
  validates :title, presence: true
  extend FriendlyId
  friendly_id :title, use: :slugged
end
