# frozen_string_literal: true

# app/controllers/about_sections_controller.rb
class AboutSectionsController < ApplicationController
  skip_before_action :authenticate_user! # uncomment if only admins can edit

  before_action :set_about_section, only: %i[edit update destroy]

  # Public “About Us” page:
  def index
    @sections     = AboutSection.all.order(position: :asc)
    @team_members = TeamMember.all.order(position: :asc)
  end

  def new
    @about_section = AboutSection.new
  end

  def create
    @about_section = AboutSection.new(about_section_params)
    if @about_section.save
      redirect_to about_sections_path, notice: 'Section was successfully created.'
    else
      render :new
    end
  end

  def edit
    # @about_section is set by before_action
  end

  def update
    if @about_section.update(about_section_params)
      redirect_to about_sections_path, notice: 'Section was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @about_section.destroy
    redirect_to about_sections_path, notice: 'Section was successfully deleted.'
  end

  private

  def set_about_section
    @about_section = AboutSection.find(params[:id])
  end

  def about_section_params
    params.require(:about_section).permit(:title, :content, :image_url, :position)
  end
end
