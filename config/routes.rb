Rails.application.routes.draw do
  root to: 'admin/home#index'
  namespace :admin do
    resources :users
    #resources :sessions, except: [:destroy]
    #get 'sessions/new'
    post 'sessions/create'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
  end











  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'

  #get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
