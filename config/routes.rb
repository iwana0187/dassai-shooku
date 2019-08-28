Rails.application.routes.draw do
  devise_for :stores
  devise_for :users
  devise_for :installs
  root to: "books#index"
  get 'books/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
