Rails.application.routes.draw do
  get 'pages/about' , as: :about

  get 'pages/contact' , as: :contact

  get 'sneakers/(:category)' , to: 'sneakers#index', as: 'sneakers'

  get 'sneaker/:id' , to: 'sneakers#show', as:'sneaker'

  root 'sneakers#index',  as: :home

  resources :sneaker
  #devise_for :sneakers, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
