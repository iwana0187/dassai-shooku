Rails.application.routes.draw do
  devise_for :stores
  devise_for :users
  devise_for :installs

  root to: "books#index"

  resources :users do
    resources :books_list_in_favorites
  end
  resources :stores
  resources :books
  resources :statistics
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
