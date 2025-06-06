# frozen_string_literal: true

Rails.application.routes.draw do
  resources :galleries, only: %i[index new create show]
  get 'about/index'
  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'home#index'

  resources :products
  resources :categories
  resources :contacts, only: %i[new create]
  get 'contact', to: 'contacts#new'

  # Add routes for about sections and team members
  resources :about_sections

  resources :team_members

  resources :galleries do
    resources :gallery_images, only: %i[create destroy]
  end
end
