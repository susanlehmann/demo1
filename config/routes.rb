Rails.application.routes.draw do
  get 'sessions/new'
   get '/signup', to: 'users#new'
    root 'static_pages#home'
  resources :users
  get 'static_pages/contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
