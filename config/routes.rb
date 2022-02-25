Rails.application.routes.draw do
<<<<<<< HEAD
  root "teams#index"
=======
  root "people#index"
  get "/management", to: "people#management"
>>>>>>> fe9192963dabb09039d4e2e1c33ab6b884b7b4da

  resources :people
  resources :teams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
