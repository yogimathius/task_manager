Rails.application.routes.draw do
  resources :subtasks
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :tasks, :subtasks
  end
  
  # Defines the root path route ("/")
  # root "articles#index"
end
