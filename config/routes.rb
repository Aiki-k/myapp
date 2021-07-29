Rails.application.routes.draw do
  devise_for :users
  
  root to: 'tweets#index'
  resources :tweets do
    resources :checks
    collection do
      get 'top'
      get 'post'
    end
  end
end
