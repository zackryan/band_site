BandSite::Application.routes.draw do
  root :to => 'pages#home'

  match '/search', to: 'pages#search'

resources :users

end
