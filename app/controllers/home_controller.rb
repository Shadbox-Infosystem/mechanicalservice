# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
    @categories = Category.all
    @galleries = Gallery.all
  end
end
