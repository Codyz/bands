MusicApp::Application.routes.draw do
  resources :bands
  resources :albums
  resources :tracks

  root to: 'bands#index'

end
