Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :customers
  resources :daily_reports do
    collection {get "search"}
    resources :comments, only: [:create, :destroy]
  end
  resources :items
  resources :suggest_items, only: [:index, :new, :update]

  post 'suggest_items' => 'suggest_items#create', as: 'create_suggest_items'
  get "/:current_users/my_page" => "users#show", as: 'my_page'

  namespace :admin do
    resources :customers
    resources :items
    resources :users
  end
end
