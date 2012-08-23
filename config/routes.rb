BandSite::Application.routes.draw do
  get "pages/home"

  get "pages/search"

resources :profiles

resources :users

end
