Rails.application.routes.draw do
  devise_for :users

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

  resources :tags do
    get 'posts', to: 'posts#search'
  end

  get 'posts/:id', to: 'checks#checked'
  
end