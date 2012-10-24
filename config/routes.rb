BandSite::Application.routes.draw do

  resources :users

  root :to => 'pages#home'

  match '/search', to: 'pages#search'

  match '/signup', to: 'users#new'



end
