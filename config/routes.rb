Rails.application.routes.draw do
  devise_for :stores, controllers: {
    sessions: 'stores/sessions',
    passwords: 'stores/passwords',
    registrations: 'stores/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

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
