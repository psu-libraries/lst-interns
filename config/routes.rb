Rails.application.routes.draw do

  root "teams#index"
  get "/management", to: "people#management"


  resources :people
  resources :teams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
