Rails.application.routes.draw do
  root to: 'homepage#index'

  devise_for :admins

  get '/cookies_policy', to: 'pages#cookies_policy'

  get '/homepage', to: 'homepage#index'

  resources :leads, only: [:create]

  get '/admin', to: 'admin/posts#index'
  namespace :admin do
    resources :posts, only: [:index]
    resources :leads, only: [:index]
  end
end
