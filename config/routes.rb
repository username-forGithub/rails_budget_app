Rails.application.routes.draw do
  devise_for :users

  resource :users do
    resources :categories do
      resources :payments
    end
  end

  authenticated :user do
    root "users#index"
  end

  devise_scope :user do
    root to: 'devise/sessions#splash', as: :splash_root
  end

end
