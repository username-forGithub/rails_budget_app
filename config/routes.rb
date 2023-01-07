# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'flash#index'
  resources :users
  resources :categories do
    resources :transactions
  end
end
