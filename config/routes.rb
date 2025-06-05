# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'home#index'

  resources :products
  resources :categories
  resources :contacts, only: %i[new create]
  get 'contact', to: 'contacts#new'
end
