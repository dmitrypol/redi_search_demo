Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  resources :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount RedisBrowser::Web => '/redis'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
