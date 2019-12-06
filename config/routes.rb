Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :users, only: [:edit, :update]
  
  resources :posts do
    collection do
      get :signup0
      get :signup1
      get :signup2
      get :signup3
      get :signup4
      get :signup5
    end
 end
end