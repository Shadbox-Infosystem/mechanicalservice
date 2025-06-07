# frozen_string_literal: true

class HomeController < ApplicationController

  def index
    @products = Product.all
    @categories = Category.all
    @galleries = Gallery.all.includes(:gallery_images)
  end
end
