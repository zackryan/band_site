BandSite::Application.routes.draw do

  root :to => 'pages#home'

  match '/search', to: 'pages#search'

  match '/signup', to: 'users#new'

resources :users

end
