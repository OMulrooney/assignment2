Rails.application.routes.draw do
  get 'products/new'
  get 'products/index'
  get 'products/show'
  get 'products/create'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
