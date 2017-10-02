Rails.application.routes.draw do
  
  get 'users/new'

  root 'static_pages#index'

  get 'static_pages/index'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'


  #StaticPages
<<<<<<< HEAD
=======
  
>>>>>>> f874be172855e94e056cb5457f2581fe30677c9e
  get  '/help',    to: 'static_pages#help', as: 'help'
  get  '/about',   to: 'static_pages#about', as: 'about'
  get  '/contact', to: 'static_pages#contact', as: 'contact'

<<<<<<< HEAD
  #Users
  get  '/signup',  to: 'users#new'

  resources :users
=======
>>>>>>> f874be172855e94e056cb5457f2581fe30677c9e

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
