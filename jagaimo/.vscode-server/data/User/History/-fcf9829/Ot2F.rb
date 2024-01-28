# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'products#index'

  namespace :admin do
    resources :products, only: %i[index show new create edit update destroy]
  end

  scope module: :user do
    resources :products, only: %i[index show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
