Rails.application.routes.draw do
  
  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'users/new'
  end

  namespace :admin do
    get 'users/edit'
  end

  namespace :admin do
    get 'users/show'
  end

  namespace :admin do
    get 'dashboard/index'
  end

  get 'users/new'

  root 'static_pages#index'

  get 'static_pages/index'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'


  #StaticPages
  get  '/help',    to: 'static_pages#help', as: 'help'
  get  '/about',   to: 'static_pages#about', as: 'about'
  get  '/contact', to: 'static_pages#contact', as: 'contact'

  #Users
  get  '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users


  #Admin Dashboard
  namespace :admin do
    root 'dashboard#index'
    get 'dashboard/index'
    resources :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
