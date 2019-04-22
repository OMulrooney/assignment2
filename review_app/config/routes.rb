Rails.application.routes.draw do
  get 'reviews/show'
  get 'reviews/index'
  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/edit'
  get 'reviews/update'
  get 'sessions/index'
  # get 'sessions/new'
  resources :sessions
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'profiles/show'
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/edit'
  get 'profiles/update'
  get 'profile/show'
  get 'profile/new'
  get 'profile/create'
  get 'products/new'
  get 'products/index'
  get 'products/show'
  get 'products/create'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :products
  resources :profiles
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
