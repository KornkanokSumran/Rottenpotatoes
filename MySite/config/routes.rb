  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
MySite::Application.routes.draw do
  # Route that posts ’Search TMDb’ form
  post '/movies/search_tmdb'
  resources :movies
  root :to => redirect('/movies')
  
  get  'auth/:provider/callback', to: 'sessions#create'
  get  'auth/:provider' => 'sessions#loginbefore'
  post 'logout' => 'sessions#destroy'
  get  'auth/failure' => 'sessions#failure'
  get  'auth/twitter' => 'login'
  get  'auth/facebook' => 'login'
  resources :movies
end


