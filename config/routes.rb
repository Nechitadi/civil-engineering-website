# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'homepage#index'

  devise_for :admins

  get '/cookies_policy', to: 'pages#cookies_policy'

  get '/homepage', to: 'homepage#index'

  resources :leads, only: [:create]

  get '/admin', to: 'admin/posts#index'

  namespace :admin do
    resources :posts, only: %i[index new edit create update]
    resources :leads, only: [:index]
  end
end
