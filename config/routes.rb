Rails.application.routes.draw do
  devise_for :users
  resources :courses
  
  root to: 'courses#index'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
end
