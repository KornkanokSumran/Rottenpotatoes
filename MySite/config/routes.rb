  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
MySite::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  
  get  'auth/:provider/callback' => 'sessions#create'
  get  'logout' => 'sessions#destroy'
  get  'signup' => 'welcome#signup', as: :signup
  post 'signup' => 'sessions#signupdata'
  post 'logindata' => 'sessions#logindata'
  get  'auth/failure' => 'sessions#failure'
  get 'auth/facebook' => 'login'
end

