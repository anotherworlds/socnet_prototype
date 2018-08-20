Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions', registraions: 'users/registrations' }, :path_prefix => 'dev'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :articles
  end
  root 'users#index'

end
