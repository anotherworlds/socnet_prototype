Rails.application.routes.draw do
  resources :articles
  #devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions', registraions: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
end
