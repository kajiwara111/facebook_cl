Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy] 
  resources :pictures do
    collection do
      post :confirm
    end
  end
  
  resources :favorites, only: %i[index create destroy]
end
