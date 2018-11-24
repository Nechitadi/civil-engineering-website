Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/gallery', to: 'pages#gallery'
  get '/cookies_policy', to: 'pages#cookies_policy'

  resources :leads, only: [:create]


  get '/admin', to: 'admin/posts#index'
  namespace :admin do
    resources :posts, only: [:index]
    resources :leads, only: [:index]
  end
end
