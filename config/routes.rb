Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: %i[index edit show update]

  root to: 'static_pages#landing_page'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'activity', to: 'static_pages#activity'
end
