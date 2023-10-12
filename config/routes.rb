Rails.application.routes.draw do
  resources :videos
  resources :tones
  resources :musicstuffs
  root 'welcome#index'
  resources :notes
  resources :instruments
  resources :hasmanydanses
  resources :danses do
    collection do
      post 'mydanse'
    end
  end
  resources :pieces do
    member do
      get "editpiece"
    end
  end
  devise_for :users
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
