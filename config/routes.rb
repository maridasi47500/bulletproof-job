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
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get 'bycar/index'
  get 'boat/page1'
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
