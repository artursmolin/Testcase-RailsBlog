Rails.application.routes.draw do
  devise_for :admins
  namespace :admin do
    resources :categories
    resources :news
    resources :tags

    root to: "categories#index"
  end
  resources :news, only: %i[index show]
  resources :categories, only: %i[show]
  resources :tags, only: %i[show]
end
