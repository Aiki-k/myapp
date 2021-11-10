Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  root to: 'tweets#index'
  resources :tweets do
    collection do
      get 'top'
      get 'post'
      post 'post'
      get 'shift'
      post 'shift'
    end
    resource :checks, only: [:create, :destroy]
  end

  get 'search' => 'tweets#search'

  resources :tags do
    get 'posts', to: 'tweets#search'
  end

  get 'posts/:id', to: 'checks#checked'
  
end