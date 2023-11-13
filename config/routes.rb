Rails.application.routes.draw do
  resources :countries
  resources :jobs
  get 'forgot', to: "forgot#index"
  post 'forgot', to: "forgot#reset"
  get 'entrainement/aujourdhui', as: :entraineajd
  resources :cities
  resources :galons
  resources :comments
  get "my-posts/:title", to: "cats#showcat", as: :mycat
  resources :posts
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'bycar/index'
  get 'boat/page1'
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
