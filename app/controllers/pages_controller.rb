class PagesController < ApplicationController
  def home
    @sliders = Slider.all.order(:position)
    @products = Product.limit(6)
    @galleries = Gallery.limit(3)
  end

  def products
  end

  def gallery
  end

  def about
  end

  def contact
  end
end 