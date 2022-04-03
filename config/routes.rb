Rails.application.routes.draw do
  resources :favorites
  resources :cards
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: "cards#index"
  get 'trending', to: 'cards#trending'
  get 'top', to: 'cards#top'
  get 'search' => 'cards#search'
end
