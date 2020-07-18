Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'videos#index'
  resources :videos, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :items, only: [:index, :show, :new, :create, :edit, :update]
  end
  resources :movies

end
  