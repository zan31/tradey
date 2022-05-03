Rails.application.routes.draw do
  get 'cards_imports/new'
  get 'cards_imports/create'
  resources :favorites
  resources :cards
  resources :cards_imports, only: [:new, :create]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: "cards#index"
  get 'trending', to: 'cards#trending'
  get 'top', to: 'cards#top'
  get 'search' => 'cards#search'
  resources :accounts
end
