MusicApp::Application.routes.draw do
  resources :bands
  resources :albums
  resources :tracks
  resources :songs

  root to: 'bands#index'

end
