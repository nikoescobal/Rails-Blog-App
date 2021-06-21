Rails.application.routes.draw do
  resources :categories
  resources :articles
  # resources :votes, only [:index]
  devise_for :users
  root to: 'articles#index'
  get "/votes/:id", to: "articles#votes", :as => "votes"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
