MusicApp::Application.routes.draw do
  resources :bands
  resources :albums
  resources :tracks
  resources :songs
  resources :artists

  root to: 'bands#index'

end
